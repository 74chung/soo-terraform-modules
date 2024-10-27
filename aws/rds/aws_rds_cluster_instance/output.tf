# aws_rds_cluster
#------------------------------------------------------------------
output "cluster_id" {
  value = aws_rds_cluster.company1_alpha_dev_main_aurorapostgres_cluster.id
}
output "cluster_arn" {
  value = aws_rds_cluster.company1_alpha_dev_main_aurorapostgres_cluster.arn
}
# aws_rds_cluster_instance
#------------------------------------------------------------------
output "cluster_instance_ids" {
  value = aws_rds_cluster_instance.company1_alpha_dev_main_aurorapostgres_instance[*].id
}
output "cluster_instance_arns" {
  value = aws_rds_cluster_instance.company1_alpha_dev_main_aurorapostgres_instance[*].arn
}
