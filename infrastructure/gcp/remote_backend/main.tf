# <--- terraformのstateファイルを保存するバケットを定義 ---> #
module "terraform_state_bucket" {
  source = "../../../resource/gcp/gcs/"

  project_id = var.project_id

  location = var.location
  prefix   = var.prefix

  names = [var.bucket_name]

  versioning = {
    "var.bucket_name" : true
  }
}
