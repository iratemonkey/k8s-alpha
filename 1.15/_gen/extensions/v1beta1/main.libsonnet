{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='v1beta1', url='', help=''),
  allowedCSIDriver: (import 'allowedCSIDriver.libsonnet'),
  allowedFlexVolume: (import 'allowedFlexVolume.libsonnet'),
  allowedHostPath: (import 'allowedHostPath.libsonnet'),
  daemonSet: (import 'daemonSet.libsonnet'),
  daemonSetCondition: (import 'daemonSetCondition.libsonnet'),
  daemonSetSpec: (import 'daemonSetSpec.libsonnet'),
  daemonSetStatus: (import 'daemonSetStatus.libsonnet'),
  daemonSetUpdateStrategy: (import 'daemonSetUpdateStrategy.libsonnet'),
  deployment: (import 'deployment.libsonnet'),
  deploymentCondition: (import 'deploymentCondition.libsonnet'),
  deploymentRollback: (import 'deploymentRollback.libsonnet'),
  deploymentSpec: (import 'deploymentSpec.libsonnet'),
  deploymentStatus: (import 'deploymentStatus.libsonnet'),
  deploymentStrategy: (import 'deploymentStrategy.libsonnet'),
  fsGroupStrategyOptions: (import 'fsGroupStrategyOptions.libsonnet'),
  hostPortRange: (import 'hostPortRange.libsonnet'),
  httpIngressPath: (import 'httpIngressPath.libsonnet'),
  httpIngressRuleValue: (import 'httpIngressRuleValue.libsonnet'),
  idRange: (import 'idRange.libsonnet'),
  ingress: (import 'ingress.libsonnet'),
  ingressBackend: (import 'ingressBackend.libsonnet'),
  ingressRule: (import 'ingressRule.libsonnet'),
  ingressSpec: (import 'ingressSpec.libsonnet'),
  ingressStatus: (import 'ingressStatus.libsonnet'),
  ingressTLS: (import 'ingressTLS.libsonnet'),
  ipBlock: (import 'ipBlock.libsonnet'),
  networkPolicy: (import 'networkPolicy.libsonnet'),
  networkPolicyEgressRule: (import 'networkPolicyEgressRule.libsonnet'),
  networkPolicyIngressRule: (import 'networkPolicyIngressRule.libsonnet'),
  networkPolicyPeer: (import 'networkPolicyPeer.libsonnet'),
  networkPolicyPort: (import 'networkPolicyPort.libsonnet'),
  networkPolicySpec: (import 'networkPolicySpec.libsonnet'),
  podSecurityPolicy: (import 'podSecurityPolicy.libsonnet'),
  podSecurityPolicySpec: (import 'podSecurityPolicySpec.libsonnet'),
  replicaSet: (import 'replicaSet.libsonnet'),
  replicaSetCondition: (import 'replicaSetCondition.libsonnet'),
  replicaSetSpec: (import 'replicaSetSpec.libsonnet'),
  replicaSetStatus: (import 'replicaSetStatus.libsonnet'),
  rollbackConfig: (import 'rollbackConfig.libsonnet'),
  rollingUpdateDaemonSet: (import 'rollingUpdateDaemonSet.libsonnet'),
  rollingUpdateDeployment: (import 'rollingUpdateDeployment.libsonnet'),
  runAsGroupStrategyOptions: (import 'runAsGroupStrategyOptions.libsonnet'),
  runAsUserStrategyOptions: (import 'runAsUserStrategyOptions.libsonnet'),
  runtimeClassStrategyOptions: (import 'runtimeClassStrategyOptions.libsonnet'),
  scale: (import 'scale.libsonnet'),
  scaleSpec: (import 'scaleSpec.libsonnet'),
  scaleStatus: (import 'scaleStatus.libsonnet'),
  seLinuxStrategyOptions: (import 'seLinuxStrategyOptions.libsonnet'),
  supplementalGroupsStrategyOptions: (import 'supplementalGroupsStrategyOptions.libsonnet')
}