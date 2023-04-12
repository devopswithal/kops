locals {
  bastion_autoscaling_group_ids                      = [aws_autoscaling_group.bastions-easypay-k8s-local.id]
  bastion_security_group_ids                         = [aws_security_group.bastion-easypay-k8s-local.id]
  bastions_role_arn                                  = aws_iam_role.bastions-easypay-k8s-local.arn
  bastions_role_name                                 = aws_iam_role.bastions-easypay-k8s-local.name
  cluster_name                                       = "easypay.k8s.local"
  iam_openid_connect_provider_arn                    = aws_iam_openid_connect_provider.easypay-k8s-local.arn
  iam_openid_connect_provider_issuer                 = "easypay-k8s-io-oidc-store.s3.us-east-1.amazonaws.com/easypay.k8s.local/discovery/easypay.k8s.local"
  kube-system-aws-cloud-controller-manager_role_arn  = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local.arn
  kube-system-aws-cloud-controller-manager_role_name = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local.name
  kube-system-ebs-csi-controller-sa_role_arn         = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local.arn
  kube-system-ebs-csi-controller-sa_role_name        = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local.name
  master_autoscaling_group_ids                       = [aws_autoscaling_group.control-plane-us-east-1a-masters-easypay-k8s-local.id, aws_autoscaling_group.control-plane-us-east-1b-masters-easypay-k8s-local.id, aws_autoscaling_group.control-plane-us-east-1c-masters-easypay-k8s-local.id]
  master_security_group_ids                          = [aws_security_group.masters-easypay-k8s-local.id]
  masters_role_arn                                   = aws_iam_role.masters-easypay-k8s-local.arn
  masters_role_name                                  = aws_iam_role.masters-easypay-k8s-local.name
  node_autoscaling_group_ids                         = [aws_autoscaling_group.nodes-us-east-1a-easypay-k8s-local.id, aws_autoscaling_group.nodes-us-east-1b-easypay-k8s-local.id, aws_autoscaling_group.nodes-us-east-1c-easypay-k8s-local.id]
  node_security_group_ids                            = [aws_security_group.nodes-easypay-k8s-local.id]
  node_subnet_ids                                    = [aws_subnet.us-east-1a-easypay-k8s-local.id, aws_subnet.us-east-1b-easypay-k8s-local.id, aws_subnet.us-east-1c-easypay-k8s-local.id]
  nodes_role_arn                                     = aws_iam_role.nodes-easypay-k8s-local.arn
  nodes_role_name                                    = aws_iam_role.nodes-easypay-k8s-local.name
  region                                             = "us-east-1"
  route_table_private-us-east-1a_id                  = aws_route_table.private-us-east-1a-easypay-k8s-local.id
  route_table_private-us-east-1b_id                  = aws_route_table.private-us-east-1b-easypay-k8s-local.id
  route_table_private-us-east-1c_id                  = aws_route_table.private-us-east-1c-easypay-k8s-local.id
  route_table_public_id                              = aws_route_table.easypay-k8s-local.id
  subnet_us-east-1a_id                               = aws_subnet.us-east-1a-easypay-k8s-local.id
  subnet_us-east-1b_id                               = aws_subnet.us-east-1b-easypay-k8s-local.id
  subnet_us-east-1c_id                               = aws_subnet.us-east-1c-easypay-k8s-local.id
  subnet_utility-us-east-1a_id                       = aws_subnet.utility-us-east-1a-easypay-k8s-local.id
  subnet_utility-us-east-1b_id                       = aws_subnet.utility-us-east-1b-easypay-k8s-local.id
  subnet_utility-us-east-1c_id                       = aws_subnet.utility-us-east-1c-easypay-k8s-local.id
  vpc_cidr_block                                     = aws_vpc.easypay-k8s-local.cidr_block
  vpc_id                                             = aws_vpc.easypay-k8s-local.id
  vpc_ipv6_cidr_block                                = aws_vpc.easypay-k8s-local.ipv6_cidr_block
  vpc_ipv6_cidr_length                               = local.vpc_ipv6_cidr_block == null ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-easypay-k8s-local.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-easypay-k8s-local.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-easypay-k8s-local.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-easypay-k8s-local.name
}

output "cluster_name" {
  value = "easypay.k8s.local"
}

output "iam_openid_connect_provider_arn" {
  value = aws_iam_openid_connect_provider.easypay-k8s-local.arn
}

output "iam_openid_connect_provider_issuer" {
  value = "easypay-k8s-io-oidc-store.s3.us-east-1.amazonaws.com/easypay.k8s.local/discovery/easypay.k8s.local"
}

output "kube-system-aws-cloud-controller-manager_role_arn" {
  value = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local.arn
}

output "kube-system-aws-cloud-controller-manager_role_name" {
  value = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local.name
}

output "kube-system-ebs-csi-controller-sa_role_arn" {
  value = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local.arn
}

output "kube-system-ebs-csi-controller-sa_role_name" {
  value = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local.name
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.control-plane-us-east-1a-masters-easypay-k8s-local.id, aws_autoscaling_group.control-plane-us-east-1b-masters-easypay-k8s-local.id, aws_autoscaling_group.control-plane-us-east-1c-masters-easypay-k8s-local.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-easypay-k8s-local.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-easypay-k8s-local.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-easypay-k8s-local.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-easypay-k8s-local.id, aws_autoscaling_group.nodes-us-east-1b-easypay-k8s-local.id, aws_autoscaling_group.nodes-us-east-1c-easypay-k8s-local.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-easypay-k8s-local.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.us-east-1a-easypay-k8s-local.id, aws_subnet.us-east-1b-easypay-k8s-local.id, aws_subnet.us-east-1c-easypay-k8s-local.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-easypay-k8s-local.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-easypay-k8s-local.name
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = aws_route_table.private-us-east-1a-easypay-k8s-local.id
}

output "route_table_private-us-east-1b_id" {
  value = aws_route_table.private-us-east-1b-easypay-k8s-local.id
}

output "route_table_private-us-east-1c_id" {
  value = aws_route_table.private-us-east-1c-easypay-k8s-local.id
}

output "route_table_public_id" {
  value = aws_route_table.easypay-k8s-local.id
}

output "subnet_us-east-1a_id" {
  value = aws_subnet.us-east-1a-easypay-k8s-local.id
}

output "subnet_us-east-1b_id" {
  value = aws_subnet.us-east-1b-easypay-k8s-local.id
}

output "subnet_us-east-1c_id" {
  value = aws_subnet.us-east-1c-easypay-k8s-local.id
}

output "subnet_utility-us-east-1a_id" {
  value = aws_subnet.utility-us-east-1a-easypay-k8s-local.id
}

output "subnet_utility-us-east-1b_id" {
  value = aws_subnet.utility-us-east-1b-easypay-k8s-local.id
}

output "subnet_utility-us-east-1c_id" {
  value = aws_subnet.utility-us-east-1c-easypay-k8s-local.id
}

output "vpc_cidr_block" {
  value = aws_vpc.easypay-k8s-local.cidr_block
}

output "vpc_id" {
  value = aws_vpc.easypay-k8s-local.id
}

output "vpc_ipv6_cidr_block" {
  value = aws_vpc.easypay-k8s-local.ipv6_cidr_block
}

output "vpc_ipv6_cidr_length" {
  value = local.vpc_ipv6_cidr_block == null ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-easypay-k8s-local.id
    version = aws_launch_template.bastions-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.bastion-easypay-k8s-local-mk5iqs.id]
  vpc_zone_identifier = [aws_subnet.us-east-1a-easypay-k8s-local.id, aws_subnet.us-east-1b-easypay-k8s-local.id, aws_subnet.us-east-1c-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "control-plane-us-east-1a-masters-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-us-east-1a-masters-easypay-k8s-local.id
    version = aws_launch_template.control-plane-us-east-1a-masters-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-us-east-1a.masters.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-us-east-1a.masters.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.api-easypay-k8s-local-v1qp5v.id]
  vpc_zone_identifier = [aws_subnet.us-east-1a-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "control-plane-us-east-1b-masters-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-us-east-1b-masters-easypay-k8s-local.id
    version = aws_launch_template.control-plane-us-east-1b-masters-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-us-east-1b.masters.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-us-east-1b.masters.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.api-easypay-k8s-local-v1qp5v.id]
  vpc_zone_identifier = [aws_subnet.us-east-1b-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "control-plane-us-east-1c-masters-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-us-east-1c-masters-easypay-k8s-local.id
    version = aws_launch_template.control-plane-us-east-1c-masters-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-us-east-1c.masters.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-us-east-1c.masters.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.api-easypay-k8s-local-v1qp5v.id]
  vpc_zone_identifier = [aws_subnet.us-east-1c-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-easypay-k8s-local.id
    version = aws_launch_template.nodes-us-east-1a-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-easypay-k8s-local.id
    version = aws_launch_template.nodes-us-east-1b-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-easypay-k8s-local.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-easypay-k8s-local" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-easypay-k8s-local.id
    version = aws_launch_template.nodes-us-east-1c-easypay-k8s-local.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1c.easypay.k8s.local"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "easypay.k8s.local"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.easypay.k8s.local"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/easypay.k8s.local"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-easypay-k8s-local.id]
}

resource "aws_ebs_volume" "master-000-a-etcd-events-easypay-k8s-local" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-a.etcd-events.easypay.k8s.local"
    "k8s.io/etcd/events"                      = "master-000-a/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "master-000-a-etcd-main-easypay-k8s-local" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 2
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-a.etcd-main.easypay.k8s.local"
    "k8s.io/etcd/main"                        = "master-000-a/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "master-000-b-etcd-events-easypay-k8s-local" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-b.etcd-events.easypay.k8s.local"
    "k8s.io/etcd/events"                      = "master-000-b/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "master-000-b-etcd-main-easypay-k8s-local" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-b.etcd-main.easypay.k8s.local"
    "k8s.io/etcd/main"                        = "master-000-b/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "master-000-c-etcd-events-easypay-k8s-local" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-c.etcd-events.easypay.k8s.local"
    "k8s.io/etcd/events"                      = "master-000-c/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "master-000-c-etcd-main-easypay-k8s-local" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "master-000-c.etcd-main.easypay.k8s.local"
    "k8s.io/etcd/main"                        = "master-000-c/master-000-a,master-000-b,master-000-c"
    "k8s.io/role/control-plane"               = "1"
    "k8s.io/role/master"                      = "1"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_eip" "us-east-1a-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1a.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1b-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1b.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1c-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1c.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc = true
}

resource "aws_iam_instance_profile" "bastions-easypay-k8s-local" {
  name = "bastions.easypay.k8s.local"
  role = aws_iam_role.bastions-easypay-k8s-local.name
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "bastions.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-easypay-k8s-local" {
  name = "masters.easypay.k8s.local"
  role = aws_iam_role.masters-easypay-k8s-local.name
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "masters.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-easypay-k8s-local" {
  name = "nodes.easypay.k8s.local"
  role = aws_iam_role.nodes-easypay-k8s-local.name
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "nodes.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_openid_connect_provider" "easypay-k8s-local" {
  client_id_list = ["amazonaws.com"]
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  thumbprint_list = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280", "a9d53002e97e00e043244f3d170d6f4c414104fd"]
  url             = "https://easypay-k8s-io-oidc-store.s3.us-east-1.amazonaws.com/easypay.k8s.local/discovery/easypay.k8s.local"
}

resource "aws_iam_role" "aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_aws-cloud-controller-manager.kube-system.sa.easypay.k8s.local_policy")
  name               = "aws-cloud-controller-manager.kube-system.sa.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "aws-cloud-controller-manager.kube-system.sa.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "service-account.kops.k8s.io/name"        = "aws-cloud-controller-manager"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "bastions-easypay-k8s-local" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.easypay.k8s.local_policy")
  name               = "bastions.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "bastions.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_role" "ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_ebs-csi-controller-sa.kube-system.sa.easypay.k8s.local_policy")
  name               = "ebs-csi-controller-sa.kube-system.sa.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "ebs-csi-controller-sa.kube-system.sa.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "service-account.kops.k8s.io/name"        = "ebs-csi-controller-sa"
    "service-account.kops.k8s.io/namespace"   = "kube-system"
  }
}

resource "aws_iam_role" "masters-easypay-k8s-local" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.easypay.k8s.local_policy")
  name               = "masters.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "masters.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_role" "nodes-easypay-k8s-local" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.easypay.k8s.local_policy")
  name               = "nodes.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "nodes.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_iam_role_policy" "aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local" {
  name   = "aws-cloud-controller-manager.kube-system.sa.easypay.k8s.local"
  policy = file("${path.module}/data/aws_iam_role_policy_aws-cloud-controller-manager.kube-system.sa.easypay.k8s.local_policy")
  role   = aws_iam_role.aws-cloud-controller-manager-kube-system-sa-easypay-k8s-local.name
}

resource "aws_iam_role_policy" "bastions-easypay-k8s-local" {
  name   = "bastions.easypay.k8s.local"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.easypay.k8s.local_policy")
  role   = aws_iam_role.bastions-easypay-k8s-local.name
}

resource "aws_iam_role_policy" "ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local" {
  name   = "ebs-csi-controller-sa.kube-system.sa.easypay.k8s.local"
  policy = file("${path.module}/data/aws_iam_role_policy_ebs-csi-controller-sa.kube-system.sa.easypay.k8s.local_policy")
  role   = aws_iam_role.ebs-csi-controller-sa-kube-system-sa-easypay-k8s-local.name
}

resource "aws_iam_role_policy" "masters-easypay-k8s-local" {
  name   = "masters.easypay.k8s.local"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.easypay.k8s.local_policy")
  role   = aws_iam_role.masters-easypay-k8s-local.name
}

resource "aws_iam_role_policy" "nodes-easypay-k8s-local" {
  name   = "nodes.easypay.k8s.local"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.easypay.k8s.local_policy")
  role   = aws_iam_role.nodes-easypay-k8s-local.name
}

resource "aws_internet_gateway" "easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_key_pair" "admin_key" {
  key_name   = "/home/labsuser/.ssh/id_rsa.pub"
  public_key = file("${path.module}/data/aws_key_pair_/home/labsuser/.ssh/id_rsa.pub_public_key")
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_launch_template" "bastions-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.bastions-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "bastions.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "bastions.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "easypay.k8s.local"
    "Name"                                                                       = "bastions.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
  }
}

resource "aws_launch_template" "control-plane-us-east-1a-masters-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-us-east-1a.masters.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1a.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1a.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "easypay.k8s.local"
    "Name"                                                                                                  = "control-plane-us-east-1a.masters.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1a"
    "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-us-east-1a.masters.easypay.k8s.local_user_data")
}

resource "aws_launch_template" "control-plane-us-east-1b-masters-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-us-east-1b.masters.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1b.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1b"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1b.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1b"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "easypay.k8s.local"
    "Name"                                                                                                  = "control-plane-us-east-1b.masters.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1b"
    "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-us-east-1b.masters.easypay.k8s.local_user_data")
}

resource "aws_launch_template" "control-plane-us-east-1c-masters-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-us-east-1c.masters.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1c.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1c"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "easypay.k8s.local"
      "Name"                                                                                                  = "control-plane-us-east-1c.masters.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1c"
      "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "easypay.k8s.local"
    "Name"                                                                                                  = "control-plane-us-east-1c.masters.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-us-east-1c"
    "kubernetes.io/cluster/easypay.k8s.local"                                                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-us-east-1c.masters.easypay.k8s.local_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1a.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1a.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1a.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "easypay.k8s.local"
    "Name"                                                                       = "nodes-us-east-1a.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.easypay.k8s.local_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1b.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1b.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1b.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "easypay.k8s.local"
    "Name"                                                                       = "nodes-us-east-1b.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.easypay.k8s.local_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-easypay-k8s-local" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 8
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-easypay-k8s-local.id
  }
  image_id      = "ami-0172070f66a8ebe63"
  instance_type = "t2.small"
  key_name      = aws_key_pair.admin_key.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1c.easypay.k8s.local"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-easypay-k8s-local.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1c.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "easypay.k8s.local"
      "Name"                                                                       = "nodes-us-east-1c.easypay.k8s.local"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "easypay.k8s.local"
    "Name"                                                                       = "nodes-us-east-1c.easypay.k8s.local"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/easypay.k8s.local"                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.easypay.k8s.local_user_data")
}

resource "aws_lb" "api-easypay-k8s-local" {
  enable_cross_zone_load_balancing = true
  internal                         = true
  load_balancer_type               = "network"
  name                             = "api-easypay-k8s-local-92fabi"
  subnet_mapping {
    subnet_id = aws_subnet.us-east-1a-easypay-k8s-local.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.us-east-1b-easypay-k8s-local.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.us-east-1c-easypay-k8s-local.id
  }
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "api.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_lb" "bastion-easypay-k8s-local" {
  enable_cross_zone_load_balancing = true
  internal                         = false
  load_balancer_type               = "network"
  name                             = "bastion-easypay-k8s-local-mk5iqs"
  subnet_mapping {
    subnet_id = aws_subnet.utility-us-east-1a-easypay-k8s-local.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.utility-us-east-1b-easypay-k8s-local.id
  }
  subnet_mapping {
    subnet_id = aws_subnet.utility-us-east-1c-easypay-k8s-local.id
  }
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "bastion.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_lb_listener" "api-easypay-k8s-local-443" {
  default_action {
    target_group_arn = aws_lb_target_group.api-easypay-k8s-local-v1qp5v.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.api-easypay-k8s-local.id
  port              = 443
  protocol          = "TCP"
}

resource "aws_lb_listener" "api-easypay-k8s-local-443" {
  default_action {
    target_group_arn = aws_lb_target_group.api-easypay-k8s-local-v1qp5v.id
    type             = "forward"
  } 
  load_balancer_arn = aws_lb.api-easypay-k8s-local.id
  port              = 6443
  protocol          = "TCP"
}

resource "aws_lb_listener" "bastion-easypay-k8s-local-22" {
  default_action {
    target_group_arn = aws_lb_target_group.bastion-easypay-k8s-local-mk5iqs.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.bastion-easypay-k8s-local.id
  port              = 22
  protocol          = "TCP"
}

resource "aws_lb_target_group" "bastion-easypay-k8s-local-mk5iqs" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "bastion-easypay-k8s-local-mk5iqs"
  port     = 22
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "bastion-easypay-k8s-local-mk5iqs"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_lb_target_group" "api-easypay-k8s-local-v1qp5v" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "api-easypay-k8s-local-v1qp5v"
  port     = 443
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "api-easypay-k8s-local-v1qp5v"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_lb_target_group" "api-easypay-k8s-local-v1qp5v" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "api-easypay-k8s-local-v1qp5v"
  port     = 6443
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "api-easypay-k8s-local-v1qp5v"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_nat_gateway" "us-east-1a-easypay-k8s-local" {
  allocation_id = aws_eip.us-east-1a-easypay-k8s-local.id
  subnet_id     = aws_subnet.utility-us-east-1a-easypay-k8s-local.id
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1a.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-easypay-k8s-local" {
  allocation_id = aws_eip.us-east-1b-easypay-k8s-local.id
  subnet_id     = aws_subnet.utility-us-east-1b-easypay-k8s-local.id
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1b.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-easypay-k8s-local" {
  allocation_id = aws_eip.us-east-1c-easypay-k8s-local.id
  subnet_id     = aws_subnet.utility-us-east-1c-easypay-k8s-local.id
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "us-east-1c.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.easypay-k8s-local.id
  route_table_id         = aws_route_table.easypay-k8s-local.id
}

resource "aws_route" "route-__--0" {
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.easypay-k8s-local.id
  route_table_id              = aws_route_table.easypay-k8s-local.id
}

resource "aws_route" "route-private-us-east-1a-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1a-easypay-k8s-local.id
  route_table_id         = aws_route_table.private-us-east-1a-easypay-k8s-local.id
}

resource "aws_route" "route-private-us-east-1b-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1b-easypay-k8s-local.id
  route_table_id         = aws_route_table.private-us-east-1b-easypay-k8s-local.id
}

resource "aws_route" "route-private-us-east-1c-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1c-easypay-k8s-local.id
  route_table_id         = aws_route_table.private-us-east-1c-easypay-k8s-local.id
}

resource "aws_route_table" "easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/kops/role"                 = "public"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_route_table" "private-us-east-1a-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "private-us-east-1a.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/kops/role"                 = "private-us-east-1a"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_route_table" "private-us-east-1b-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "private-us-east-1b.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/kops/role"                 = "private-us-east-1b"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_route_table" "private-us-east-1c-easypay-k8s-local" {
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "private-us-east-1c.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/kops/role"                 = "private-us-east-1c"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_route_table_association" "private-us-east-1a-easypay-k8s-local" {
  route_table_id = aws_route_table.private-us-east-1a-easypay-k8s-local.id
  subnet_id      = aws_subnet.us-east-1a-easypay-k8s-local.id
}

resource "aws_route_table_association" "private-us-east-1b-easypay-k8s-local" {
  route_table_id = aws_route_table.private-us-east-1b-easypay-k8s-local.id
  subnet_id      = aws_subnet.us-east-1b-easypay-k8s-local.id
}

resource "aws_route_table_association" "private-us-east-1c-easypay-k8s-local" {
  route_table_id = aws_route_table.private-us-east-1c-easypay-k8s-local.id
  subnet_id      = aws_subnet.us-east-1c-easypay-k8s-local.id
}

resource "aws_route_table_association" "utility-us-east-1a-easypay-k8s-local" {
  route_table_id = aws_route_table.easypay-k8s-local.id
  subnet_id      = aws_subnet.utility-us-east-1a-easypay-k8s-local.id
}

resource "aws_route_table_association" "utility-us-east-1b-easypay-k8s-local" {
  route_table_id = aws_route_table.easypay-k8s-local.id
  subnet_id      = aws_subnet.utility-us-east-1b-easypay-k8s-local.id
}

resource "aws_route_table_association" "utility-us-east-1c-easypay-k8s-local" {
  route_table_id = aws_route_table.easypay-k8s-local.id
  subnet_id      = aws_subnet.utility-us-east-1c-easypay-k8s-local.id
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key      = "easypay.k8s.local/cluster-completed.spec"
  provider = aws.files
}

resource "aws_s3_object" "discovery-json" {
  acl      = "public-read"
  bucket   = "easypay-k8s-io-oidc-store"
  content  = file("${path.module}/data/aws_s3_object_discovery.json_content")
  key      = "easypay.k8s.local/discovery/easypay.k8s.local/.well-known/openid-configuration"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-aws-cloud-controller-addons-k8s-io-k8s-1-18" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18_content")
  key      = "easypay.k8s.local/addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key      = "easypay.k8s.local/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-bootstrap" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-bootstrap_content")
  key      = "easypay.k8s.local/addons/bootstrap-channel.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key      = "easypay.k8s.local/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key      = "easypay.k8s.local/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key      = "easypay.k8s.local/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key      = "easypay.k8s.local/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-limit-range-addons-k8s-io" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-limit-range.addons.k8s.io_content")
  key      = "easypay.k8s.local/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-networking-projectcalico-org-k8s-1-25" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-networking.projectcalico.org-k8s-1.25_content")
  key      = "easypay.k8s.local/addons/networking.projectcalico.org/k8s-1.25.yaml"
  provider = aws.files
}

resource "aws_s3_object" "easypay-k8s-local-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_easypay.k8s.local-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key      = "easypay.k8s.local/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key      = "easypay.k8s.local/backups/etcd/events/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key      = "easypay.k8s.local/backups/etcd/main/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "keys-json" {
  acl      = "public-read"
  bucket   = "easypay-k8s-io-oidc-store"
  content  = file("${path.module}/data/aws_s3_object_keys.json_content")
  key      = "easypay.k8s.local/discovery/easypay.k8s.local/openid/v1/jwks"
  provider = aws.files
}

resource "aws_s3_object" "kops-version-txt" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key      = "easypay.k8s.local/kops-version.txt"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-east-1a" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-east-1a_content")
  key      = "easypay.k8s.local/manifests/etcd/events-control-plane-us-east-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-east-1b" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-east-1b_content")
  key      = "easypay.k8s.local/manifests/etcd/events-control-plane-us-east-1b.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-east-1c" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-east-1c_content")
  key      = "easypay.k8s.local/manifests/etcd/events-control-plane-us-east-1c.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-east-1a" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-east-1a_content")
  key      = "easypay.k8s.local/manifests/etcd/main-control-plane-us-east-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-east-1b" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-east-1b_content")
  key      = "easypay.k8s.local/manifests/etcd/main-control-plane-us-east-1b.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-east-1c" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-east-1c_content")
  key      = "easypay.k8s.local/manifests/etcd/main-control-plane-us-east-1c.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key      = "easypay.k8s.local/manifests/static/kube-apiserver-healthcheck.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-east-1a" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-east-1a_content")
  key      = "easypay.k8s.local/igconfig/control-plane/control-plane-us-east-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-east-1b" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-east-1b_content")
  key      = "easypay.k8s.local/igconfig/control-plane/control-plane-us-east-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-east-1c" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-east-1c_content")
  key      = "easypay.k8s.local/igconfig/control-plane/control-plane-us-east-1c/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1a" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1a_content")
  key      = "easypay.k8s.local/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1b" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1b_content")
  key      = "easypay.k8s.local/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1c" {
  bucket   = "easypay-k8s-io-state-store"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1c_content")
  key      = "easypay.k8s.local/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_security_group" "api-elb-easypay-k8s-local" {
  description = "Security group for api ELB"
  name        = "api-elb.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "api-elb.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_security_group" "bastion-easypay-k8s-local" {
  description = "Security group for bastion"
  name        = "bastion.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "bastion.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_security_group" "masters-easypay-k8s-local" {
  description = "Security group for masters"
  name        = "masters.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "masters.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_security_group" "nodes-easypay-k8s-local" {
  description = "Security group for nodes"
  name        = "nodes.easypay.k8s.local"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "nodes.easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_security_group_rule" "from-172-20-0-0--16-ingress-tcp-22to22-bastion-easypay-k8s-local" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-0-0--16-ingress-tcp-443to443-masters-easypay-k8s-local" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-0-0--16-ingress-tcp-6443to6443-masters-easypay-k8s-local" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 6443
  protocol          = "tcp"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 6443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-0-0--22-ingress-tcp-22to22-bastion-easypay-k8s-local" {
  cidr_blocks       = ["172.20.0.0/22"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-4-0--22-ingress-tcp-22to22-bastion-easypay-k8s-local" {
  cidr_blocks       = ["172.20.4.0/22"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-172-20-8-0--22-ingress-tcp-22to22-bastion-easypay-k8s-local" {
  cidr_blocks       = ["172.20.8.0/22"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-34-221-62-27--32-ingress-tcp-22to22-bastion-easypay-k8s-local" {
  cidr_blocks       = ["34.221.62.27/32"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-bastion-easypay-k8s-local-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-easypay-k8s-local-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-easypay-k8s-local-ingress-tcp-22to22-masters-easypay-k8s-local" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-easypay-k8s-local-ingress-tcp-22to22-nodes-easypay-k8s-local" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-easypay-k8s-local.id
  source_security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-easypay-k8s-local-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-easypay-k8s-local-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-easypay-k8s-local-ingress-all-0to0-masters-easypay-k8s-local" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-easypay-k8s-local-ingress-all-0to0-nodes-easypay-k8s-local" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-easypay-k8s-local.id
  source_security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-4-0to0-masters-easypay-k8s-local" {
  from_port                = 0
  protocol                 = "4"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-all-0to0-nodes-easypay-k8s-local" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-tcp-1to2379-masters-easypay-k8s-local" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-tcp-2382to4000-masters-easypay-k8s-local" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-tcp-4003to65535-masters-easypay-k8s-local" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-easypay-k8s-local-ingress-udp-1to65535-masters-easypay-k8s-local" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-easypay-k8s-local.id
  source_security_group_id = aws_security_group.nodes-easypay-k8s-local.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-172-20-0-0--16" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.masters-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-0-0--16" {
  cidr_blocks       = ["172.20.0.0/16"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-0-0--22" {
  cidr_blocks       = ["172.20.0.0/22"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-4-0--22" {
  cidr_blocks       = ["172.20.4.0/22"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-172-20-8-0--22" {
  cidr_blocks       = ["172.20.8.0/22"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-34-221-62-27--32" {
  cidr_blocks       = ["34.221.62.27/32"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-easypay-k8s-local.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_subnet" "us-east-1a-easypay-k8s-local" {
  availability_zone                           = "us-east-1a"
  cidr_block                                  = "172.20.32.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                                   = "easypay.k8s.local"
    "Name"                                                = "us-east-1a.easypay.k8s.local"
    "SubnetType"                                          = "Private"
    "kops.k8s.io/instance-group/bastions"                 = "true"
    "kops.k8s.io/instance-group/control-plane-us-east-1a" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1a"         = "true"
    "kubernetes.io/cluster/easypay.k8s.local"             = "owned"
    "kubernetes.io/role/internal-elb"                     = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_subnet" "us-east-1b-easypay-k8s-local" {
  availability_zone                           = "us-east-1b"
  cidr_block                                  = "172.20.64.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                                   = "easypay.k8s.local"
    "Name"                                                = "us-east-1b.easypay.k8s.local"
    "SubnetType"                                          = "Private"
    "kops.k8s.io/instance-group/bastions"                 = "true"
    "kops.k8s.io/instance-group/control-plane-us-east-1b" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1b"         = "true"
    "kubernetes.io/cluster/easypay.k8s.local"             = "owned"
    "kubernetes.io/role/internal-elb"                     = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_subnet" "us-east-1c-easypay-k8s-local" {
  availability_zone                           = "us-east-1c"
  cidr_block                                  = "172.20.96.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                                   = "easypay.k8s.local"
    "Name"                                                = "us-east-1c.easypay.k8s.local"
    "SubnetType"                                          = "Private"
    "kops.k8s.io/instance-group/bastions"                 = "true"
    "kops.k8s.io/instance-group/control-plane-us-east-1c" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1c"         = "true"
    "kubernetes.io/cluster/easypay.k8s.local"             = "owned"
    "kubernetes.io/role/internal-elb"                     = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_subnet" "utility-us-east-1a-easypay-k8s-local" {
  availability_zone                           = "us-east-1a"
  cidr_block                                  = "172.20.0.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "utility-us-east-1a.easypay.k8s.local"
    "SubnetType"                              = "Utility"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_subnet" "utility-us-east-1b-easypay-k8s-local" {
  availability_zone                           = "us-east-1b"
  cidr_block                                  = "172.20.4.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "utility-us-east-1b.easypay.k8s.local"
    "SubnetType"                              = "Utility"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_subnet" "utility-us-east-1c-easypay-k8s-local" {
  availability_zone                           = "us-east-1c"
  cidr_block                                  = "172.20.8.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "utility-us-east-1c.easypay.k8s.local"
    "SubnetType"                              = "Utility"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
  vpc_id = aws_vpc.easypay-k8s-local.id
}

resource "aws_vpc" "easypay-k8s-local" {
  assign_generated_ipv6_cidr_block = true
  cidr_block                       = "172.20.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "easypay-k8s-local" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = {
    "KubernetesCluster"                       = "easypay.k8s.local"
    "Name"                                    = "easypay.k8s.local"
    "kubernetes.io/cluster/easypay.k8s.local" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "easypay-k8s-local" {
  dhcp_options_id = aws_vpc_dhcp_options.easypay-k8s-local.id
  vpc_id          = aws_vpc.easypay-k8s-local.id
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 4.0.0"
    }
  }
}
