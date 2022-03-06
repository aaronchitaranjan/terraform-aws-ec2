output "instance_arn" {
    value       = try(aws_instance.this[0].arn, "")
}