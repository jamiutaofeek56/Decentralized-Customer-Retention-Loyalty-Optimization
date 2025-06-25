;; Intervention Planning Contract
;; Plans and tracks retention interventions

(define-constant ERR_UNAUTHORIZED (err u300))
(define-constant ERR_NOT_FOUND (err u301))
(define-constant ERR_INVALID_STATUS (err u302))

;; Intervention data structure
(define-map interventions
  uint
  {
    customer: principal,
    intervention-type: (string-ascii 50),
    status: (string-ascii 20),
    created-at: uint,
    completed-at: (optional uint)
  }
)

(define-data-var next-intervention-id uint u1)

;; Create new intervention
(define-public (create-intervention (customer principal) (intervention-type (string-ascii 50)))
  (let ((intervention-id (var-get next-intervention-id)))
    (map-set interventions intervention-id {
      customer: customer,
      intervention-type: intervention-type,
      status: "pending",
      created-at: block-height,
      completed-at: none
    })
    (var-set next-intervention-id (+ intervention-id u1))
    (ok intervention-id)
  )
)

;; Update intervention status
(define-public (update-intervention-status (intervention-id uint) (status (string-ascii 20)))
  (match (map-get? interventions intervention-id)
    intervention (begin
      (map-set interventions intervention-id (merge intervention {
        status: status,
        completed-at: (if (is-eq status "completed") (some block-height) none)
      }))
      (ok true)
    )
    ERR_NOT_FOUND
  )
)

;; Get intervention details
(define-read-only (get-intervention (intervention-id uint))
  (map-get? interventions intervention-id)
)

;; Get next intervention ID
(define-read-only (get-next-intervention-id)
  (var-get next-intervention-id)
)
