# ------------------
# Common variables
# ------------------

# <--- Project variables --- >
project = "board-359614"
region  = "asia-northeast1"

# <--- GCS common variables --->
bucket_prefix   = "board"
bucket_location = "ASIA"

# ---------------------
# Individual variables
# ---------------------

# <--- Remote bakcend bucket --->
remote_backend_bucket_name = "terraform-remote-backend"

# <--- Artifact Registry log bucket --->
artifact_registry_log_bucket_names = ["artifact-registry-backend-build-log", "artifact-registry-frontend-build-log"]