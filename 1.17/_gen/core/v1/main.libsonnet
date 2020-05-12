{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='v1', url='', help=''),
  affinity: (import 'affinity.libsonnet'),
  attachedVolume: (import 'attachedVolume.libsonnet'),
  awsElasticBlockStoreVolumeSource: (import 'awsElasticBlockStoreVolumeSource.libsonnet'),
  azureDiskVolumeSource: (import 'azureDiskVolumeSource.libsonnet'),
  azureFilePersistentVolumeSource: (import 'azureFilePersistentVolumeSource.libsonnet'),
  azureFileVolumeSource: (import 'azureFileVolumeSource.libsonnet'),
  binding: (import 'binding.libsonnet'),
  capabilities: (import 'capabilities.libsonnet'),
  cephFSPersistentVolumeSource: (import 'cephFSPersistentVolumeSource.libsonnet'),
  cephFSVolumeSource: (import 'cephFSVolumeSource.libsonnet'),
  cinderPersistentVolumeSource: (import 'cinderPersistentVolumeSource.libsonnet'),
  cinderVolumeSource: (import 'cinderVolumeSource.libsonnet'),
  clientIPConfig: (import 'clientIPConfig.libsonnet'),
  componentCondition: (import 'componentCondition.libsonnet'),
  componentStatus: (import 'componentStatus.libsonnet'),
  configMap: (import 'configMap.libsonnet'),
  configMapEnvSource: (import 'configMapEnvSource.libsonnet'),
  configMapKeySelector: (import 'configMapKeySelector.libsonnet'),
  configMapNodeConfigSource: (import 'configMapNodeConfigSource.libsonnet'),
  configMapProjection: (import 'configMapProjection.libsonnet'),
  configMapVolumeSource: (import 'configMapVolumeSource.libsonnet'),
  container: (import 'container.libsonnet'),
  containerImage: (import 'containerImage.libsonnet'),
  containerPort: (import 'containerPort.libsonnet'),
  containerState: (import 'containerState.libsonnet'),
  containerStateRunning: (import 'containerStateRunning.libsonnet'),
  containerStateTerminated: (import 'containerStateTerminated.libsonnet'),
  containerStateWaiting: (import 'containerStateWaiting.libsonnet'),
  containerStatus: (import 'containerStatus.libsonnet'),
  csiPersistentVolumeSource: (import 'csiPersistentVolumeSource.libsonnet'),
  csiVolumeSource: (import 'csiVolumeSource.libsonnet'),
  daemonEndpoint: (import 'daemonEndpoint.libsonnet'),
  downwardAPIProjection: (import 'downwardAPIProjection.libsonnet'),
  downwardAPIVolumeFile: (import 'downwardAPIVolumeFile.libsonnet'),
  downwardAPIVolumeSource: (import 'downwardAPIVolumeSource.libsonnet'),
  emptyDirVolumeSource: (import 'emptyDirVolumeSource.libsonnet'),
  endpointAddress: (import 'endpointAddress.libsonnet'),
  endpointPort: (import 'endpointPort.libsonnet'),
  endpointSubset: (import 'endpointSubset.libsonnet'),
  endpoints: (import 'endpoints.libsonnet'),
  envFromSource: (import 'envFromSource.libsonnet'),
  envVar: (import 'envVar.libsonnet'),
  envVarSource: (import 'envVarSource.libsonnet'),
  ephemeralContainer: (import 'ephemeralContainer.libsonnet'),
  event: (import 'event.libsonnet'),
  eventSeries: (import 'eventSeries.libsonnet'),
  eventSource: (import 'eventSource.libsonnet'),
  execAction: (import 'execAction.libsonnet'),
  fcVolumeSource: (import 'fcVolumeSource.libsonnet'),
  flexPersistentVolumeSource: (import 'flexPersistentVolumeSource.libsonnet'),
  flexVolumeSource: (import 'flexVolumeSource.libsonnet'),
  flockerVolumeSource: (import 'flockerVolumeSource.libsonnet'),
  gcePersistentDiskVolumeSource: (import 'gcePersistentDiskVolumeSource.libsonnet'),
  gitRepoVolumeSource: (import 'gitRepoVolumeSource.libsonnet'),
  glusterfsPersistentVolumeSource: (import 'glusterfsPersistentVolumeSource.libsonnet'),
  glusterfsVolumeSource: (import 'glusterfsVolumeSource.libsonnet'),
  handler: (import 'handler.libsonnet'),
  hostAlias: (import 'hostAlias.libsonnet'),
  hostPathVolumeSource: (import 'hostPathVolumeSource.libsonnet'),
  httpGetAction: (import 'httpGetAction.libsonnet'),
  httpHeader: (import 'httpHeader.libsonnet'),
  iscsiPersistentVolumeSource: (import 'iscsiPersistentVolumeSource.libsonnet'),
  iscsiVolumeSource: (import 'iscsiVolumeSource.libsonnet'),
  keyToPath: (import 'keyToPath.libsonnet'),
  lifecycle: (import 'lifecycle.libsonnet'),
  limitRange: (import 'limitRange.libsonnet'),
  limitRangeItem: (import 'limitRangeItem.libsonnet'),
  limitRangeSpec: (import 'limitRangeSpec.libsonnet'),
  loadBalancerIngress: (import 'loadBalancerIngress.libsonnet'),
  loadBalancerStatus: (import 'loadBalancerStatus.libsonnet'),
  localObjectReference: (import 'localObjectReference.libsonnet'),
  localVolumeSource: (import 'localVolumeSource.libsonnet'),
  namespace: (import 'namespace.libsonnet'),
  namespaceCondition: (import 'namespaceCondition.libsonnet'),
  namespaceSpec: (import 'namespaceSpec.libsonnet'),
  namespaceStatus: (import 'namespaceStatus.libsonnet'),
  nfsVolumeSource: (import 'nfsVolumeSource.libsonnet'),
  node: (import 'node.libsonnet'),
  nodeAddress: (import 'nodeAddress.libsonnet'),
  nodeAffinity: (import 'nodeAffinity.libsonnet'),
  nodeCondition: (import 'nodeCondition.libsonnet'),
  nodeConfigSource: (import 'nodeConfigSource.libsonnet'),
  nodeConfigStatus: (import 'nodeConfigStatus.libsonnet'),
  nodeDaemonEndpoints: (import 'nodeDaemonEndpoints.libsonnet'),
  nodeSelector: (import 'nodeSelector.libsonnet'),
  nodeSelectorRequirement: (import 'nodeSelectorRequirement.libsonnet'),
  nodeSelectorTerm: (import 'nodeSelectorTerm.libsonnet'),
  nodeSpec: (import 'nodeSpec.libsonnet'),
  nodeStatus: (import 'nodeStatus.libsonnet'),
  nodeSystemInfo: (import 'nodeSystemInfo.libsonnet'),
  objectFieldSelector: (import 'objectFieldSelector.libsonnet'),
  objectReference: (import 'objectReference.libsonnet'),
  persistentVolume: (import 'persistentVolume.libsonnet'),
  persistentVolumeClaim: (import 'persistentVolumeClaim.libsonnet'),
  persistentVolumeClaimCondition: (import 'persistentVolumeClaimCondition.libsonnet'),
  persistentVolumeClaimSpec: (import 'persistentVolumeClaimSpec.libsonnet'),
  persistentVolumeClaimStatus: (import 'persistentVolumeClaimStatus.libsonnet'),
  persistentVolumeClaimVolumeSource: (import 'persistentVolumeClaimVolumeSource.libsonnet'),
  persistentVolumeSpec: (import 'persistentVolumeSpec.libsonnet'),
  persistentVolumeStatus: (import 'persistentVolumeStatus.libsonnet'),
  photonPersistentDiskVolumeSource: (import 'photonPersistentDiskVolumeSource.libsonnet'),
  pod: (import 'pod.libsonnet'),
  podAffinity: (import 'podAffinity.libsonnet'),
  podAffinityTerm: (import 'podAffinityTerm.libsonnet'),
  podAntiAffinity: (import 'podAntiAffinity.libsonnet'),
  podCondition: (import 'podCondition.libsonnet'),
  podDNSConfig: (import 'podDNSConfig.libsonnet'),
  podDNSConfigOption: (import 'podDNSConfigOption.libsonnet'),
  podIP: (import 'podIP.libsonnet'),
  podReadinessGate: (import 'podReadinessGate.libsonnet'),
  podSecurityContext: (import 'podSecurityContext.libsonnet'),
  podSpec: (import 'podSpec.libsonnet'),
  podStatus: (import 'podStatus.libsonnet'),
  podTemplate: (import 'podTemplate.libsonnet'),
  podTemplateSpec: (import 'podTemplateSpec.libsonnet'),
  portworxVolumeSource: (import 'portworxVolumeSource.libsonnet'),
  preferredSchedulingTerm: (import 'preferredSchedulingTerm.libsonnet'),
  probe: (import 'probe.libsonnet'),
  projectedVolumeSource: (import 'projectedVolumeSource.libsonnet'),
  quobyteVolumeSource: (import 'quobyteVolumeSource.libsonnet'),
  rbdPersistentVolumeSource: (import 'rbdPersistentVolumeSource.libsonnet'),
  rbdVolumeSource: (import 'rbdVolumeSource.libsonnet'),
  replicationController: (import 'replicationController.libsonnet'),
  replicationControllerCondition: (import 'replicationControllerCondition.libsonnet'),
  replicationControllerSpec: (import 'replicationControllerSpec.libsonnet'),
  replicationControllerStatus: (import 'replicationControllerStatus.libsonnet'),
  resourceFieldSelector: (import 'resourceFieldSelector.libsonnet'),
  resourceQuota: (import 'resourceQuota.libsonnet'),
  resourceQuotaSpec: (import 'resourceQuotaSpec.libsonnet'),
  resourceQuotaStatus: (import 'resourceQuotaStatus.libsonnet'),
  resourceRequirements: (import 'resourceRequirements.libsonnet'),
  scaleIOPersistentVolumeSource: (import 'scaleIOPersistentVolumeSource.libsonnet'),
  scaleIOVolumeSource: (import 'scaleIOVolumeSource.libsonnet'),
  scopeSelector: (import 'scopeSelector.libsonnet'),
  scopedResourceSelectorRequirement: (import 'scopedResourceSelectorRequirement.libsonnet'),
  seLinuxOptions: (import 'seLinuxOptions.libsonnet'),
  secret: (import 'secret.libsonnet'),
  secretEnvSource: (import 'secretEnvSource.libsonnet'),
  secretKeySelector: (import 'secretKeySelector.libsonnet'),
  secretProjection: (import 'secretProjection.libsonnet'),
  secretReference: (import 'secretReference.libsonnet'),
  secretVolumeSource: (import 'secretVolumeSource.libsonnet'),
  securityContext: (import 'securityContext.libsonnet'),
  service: (import 'service.libsonnet'),
  serviceAccount: (import 'serviceAccount.libsonnet'),
  serviceAccountTokenProjection: (import 'serviceAccountTokenProjection.libsonnet'),
  servicePort: (import 'servicePort.libsonnet'),
  serviceSpec: (import 'serviceSpec.libsonnet'),
  serviceStatus: (import 'serviceStatus.libsonnet'),
  sessionAffinityConfig: (import 'sessionAffinityConfig.libsonnet'),
  storageOSPersistentVolumeSource: (import 'storageOSPersistentVolumeSource.libsonnet'),
  storageOSVolumeSource: (import 'storageOSVolumeSource.libsonnet'),
  sysctl: (import 'sysctl.libsonnet'),
  taint: (import 'taint.libsonnet'),
  tcpSocketAction: (import 'tcpSocketAction.libsonnet'),
  toleration: (import 'toleration.libsonnet'),
  topologySelectorLabelRequirement: (import 'topologySelectorLabelRequirement.libsonnet'),
  topologySelectorTerm: (import 'topologySelectorTerm.libsonnet'),
  topologySpreadConstraint: (import 'topologySpreadConstraint.libsonnet'),
  typedLocalObjectReference: (import 'typedLocalObjectReference.libsonnet'),
  volume: (import 'volume.libsonnet'),
  volumeDevice: (import 'volumeDevice.libsonnet'),
  volumeMount: (import 'volumeMount.libsonnet'),
  volumeNodeAffinity: (import 'volumeNodeAffinity.libsonnet'),
  volumeProjection: (import 'volumeProjection.libsonnet'),
  vsphereVirtualDiskVolumeSource: (import 'vsphereVirtualDiskVolumeSource.libsonnet'),
  weightedPodAffinityTerm: (import 'weightedPodAffinityTerm.libsonnet'),
  windowsSecurityContextOptions: (import 'windowsSecurityContextOptions.libsonnet')
}