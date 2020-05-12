{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='podSecurityPolicySpec', url='', help='PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.'),
  '#fsGroup': d.obj(help='FSGroupStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use FSGroupStrategyOptions from policy API Group instead.'),
  fsGroup: {
    '#withRanges': d.fn(help='ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.', args=[d.arg(name='ranges', type=d.T.array)]),
    withRanges(ranges): { fsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRangesMixin': d.fn(help='ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ranges', type=d.T.array)]),
    withRangesMixin(ranges): { fsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRule': d.fn(help='rule is the strategy that will dictate what FSGroup is used in the SecurityContext.', args=[d.arg(name='rule', type=d.T.string)]),
    withRule(rule): { fsGroup+: { rule: rule } }
  },
  '#runAsGroup': d.obj(help='RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsGroupStrategyOptions from policy API Group instead.'),
  runAsGroup: {
    '#withRanges': d.fn(help='ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.', args=[d.arg(name='ranges', type=d.T.array)]),
    withRanges(ranges): { runAsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRangesMixin': d.fn(help='ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ranges', type=d.T.array)]),
    withRangesMixin(ranges): { runAsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRule': d.fn(help='rule is the strategy that will dictate the allowable RunAsGroup values that may be set.', args=[d.arg(name='rule', type=d.T.string)]),
    withRule(rule): { runAsGroup+: { rule: rule } }
  },
  '#runAsUser': d.obj(help='RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsUserStrategyOptions from policy API Group instead.'),
  runAsUser: {
    '#withRanges': d.fn(help='ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.', args=[d.arg(name='ranges', type=d.T.array)]),
    withRanges(ranges): { runAsUser+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRangesMixin': d.fn(help='ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ranges', type=d.T.array)]),
    withRangesMixin(ranges): { runAsUser+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRule': d.fn(help='rule is the strategy that will dictate the allowable RunAsUser values that may be set.', args=[d.arg(name='rule', type=d.T.string)]),
    withRule(rule): { runAsUser+: { rule: rule } }
  },
  '#runtimeClass': d.obj(help='RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.'),
  runtimeClass: {
    '#withAllowedRuntimeClassNames': d.fn(help='allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.', args=[d.arg(name='allowedRuntimeClassNames', type=d.T.array)]),
    withAllowedRuntimeClassNames(allowedRuntimeClassNames): { runtimeClass+: { allowedRuntimeClassNames: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] } },
    '#withAllowedRuntimeClassNamesMixin': d.fn(help='allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedRuntimeClassNames', type=d.T.array)]),
    withAllowedRuntimeClassNamesMixin(allowedRuntimeClassNames): { runtimeClass+: { allowedRuntimeClassNames+: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] } },
    '#withDefaultRuntimeClassName': d.fn(help='defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.', args=[d.arg(name='defaultRuntimeClassName', type=d.T.string)]),
    withDefaultRuntimeClassName(defaultRuntimeClassName): { runtimeClass+: { defaultRuntimeClassName: defaultRuntimeClassName } }
  },
  '#seLinux': d.obj(help='SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.'),
  seLinux: {
    '#seLinuxOptions': d.obj(help='SELinuxOptions are the labels to be applied to the container'),
    seLinuxOptions: {
      '#withLevel': d.fn(help='Level is SELinux level label that applies to the container.', args=[d.arg(name='level', type=d.T.string)]),
      withLevel(level): { seLinux+: { seLinuxOptions+: { level: level } } },
      '#withRole': d.fn(help='Role is a SELinux role label that applies to the container.', args=[d.arg(name='role', type=d.T.string)]),
      withRole(role): { seLinux+: { seLinuxOptions+: { role: role } } },
      '#withType': d.fn(help='Type is a SELinux type label that applies to the container.', args=[d.arg(name='type', type=d.T.string)]),
      withType(type): { seLinux+: { seLinuxOptions+: { type: type } } },
      '#withUser': d.fn(help='User is a SELinux user label that applies to the container.', args=[d.arg(name='user', type=d.T.string)]),
      withUser(user): { seLinux+: { seLinuxOptions+: { user: user } } }
    },
    '#withRule': d.fn(help='rule is the strategy that will dictate the allowable labels that may be set.', args=[d.arg(name='rule', type=d.T.string)]),
    withRule(rule): { seLinux+: { rule: rule } }
  },
  '#supplementalGroups': d.obj(help='SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use SupplementalGroupsStrategyOptions from policy API Group instead.'),
  supplementalGroups: {
    '#withRanges': d.fn(help='ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.', args=[d.arg(name='ranges', type=d.T.array)]),
    withRanges(ranges): { supplementalGroups+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRangesMixin': d.fn(help='ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ranges', type=d.T.array)]),
    withRangesMixin(ranges): { supplementalGroups+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    '#withRule': d.fn(help='rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.', args=[d.arg(name='rule', type=d.T.string)]),
    withRule(rule): { supplementalGroups+: { rule: rule } }
  },
  '#withAllowPrivilegeEscalation': d.fn(help='allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.', args=[d.arg(name='allowPrivilegeEscalation', type=d.T.boolean)]),
  withAllowPrivilegeEscalation(allowPrivilegeEscalation): { allowPrivilegeEscalation: allowPrivilegeEscalation },
  '#withAllowedCSIDrivers': d.fn(help='AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate.', args=[d.arg(name='allowedCSIDrivers', type=d.T.array)]),
  withAllowedCSIDrivers(allowedCSIDrivers): { allowedCSIDrivers: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] },
  '#withAllowedCSIDriversMixin': d.fn(help='AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedCSIDrivers', type=d.T.array)]),
  withAllowedCSIDriversMixin(allowedCSIDrivers): { allowedCSIDrivers+: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] },
  '#withAllowedCapabilities': d.fn(help="allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.", args=[d.arg(name='allowedCapabilities', type=d.T.array)]),
  withAllowedCapabilities(allowedCapabilities): { allowedCapabilities: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] },
  '#withAllowedCapabilitiesMixin': d.fn(help="allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='allowedCapabilities', type=d.T.array)]),
  withAllowedCapabilitiesMixin(allowedCapabilities): { allowedCapabilities+: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] },
  '#withAllowedFlexVolumes': d.fn(help='allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.', args=[d.arg(name='allowedFlexVolumes', type=d.T.array)]),
  withAllowedFlexVolumes(allowedFlexVolumes): { allowedFlexVolumes: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] },
  '#withAllowedFlexVolumesMixin': d.fn(help='allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedFlexVolumes', type=d.T.array)]),
  withAllowedFlexVolumesMixin(allowedFlexVolumes): { allowedFlexVolumes+: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] },
  '#withAllowedHostPaths': d.fn(help='allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.', args=[d.arg(name='allowedHostPaths', type=d.T.array)]),
  withAllowedHostPaths(allowedHostPaths): { allowedHostPaths: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] },
  '#withAllowedHostPathsMixin': d.fn(help='allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedHostPaths', type=d.T.array)]),
  withAllowedHostPathsMixin(allowedHostPaths): { allowedHostPaths+: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] },
  '#withAllowedProcMountTypes': d.fn(help='AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.', args=[d.arg(name='allowedProcMountTypes', type=d.T.array)]),
  withAllowedProcMountTypes(allowedProcMountTypes): { allowedProcMountTypes: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] },
  '#withAllowedProcMountTypesMixin': d.fn(help='AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedProcMountTypes', type=d.T.array)]),
  withAllowedProcMountTypesMixin(allowedProcMountTypes): { allowedProcMountTypes+: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] },
  '#withAllowedUnsafeSysctls': d.fn(help='allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.\n\nExamples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.', args=[d.arg(name='allowedUnsafeSysctls', type=d.T.array)]),
  withAllowedUnsafeSysctls(allowedUnsafeSysctls): { allowedUnsafeSysctls: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] },
  '#withAllowedUnsafeSysctlsMixin': d.fn(help='allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.\n\nExamples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='allowedUnsafeSysctls', type=d.T.array)]),
  withAllowedUnsafeSysctlsMixin(allowedUnsafeSysctls): { allowedUnsafeSysctls+: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] },
  '#withDefaultAddCapabilities': d.fn(help='defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.', args=[d.arg(name='defaultAddCapabilities', type=d.T.array)]),
  withDefaultAddCapabilities(defaultAddCapabilities): { defaultAddCapabilities: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] },
  '#withDefaultAddCapabilitiesMixin': d.fn(help='defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='defaultAddCapabilities', type=d.T.array)]),
  withDefaultAddCapabilitiesMixin(defaultAddCapabilities): { defaultAddCapabilities+: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] },
  '#withDefaultAllowPrivilegeEscalation': d.fn(help='defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.', args=[d.arg(name='defaultAllowPrivilegeEscalation', type=d.T.boolean)]),
  withDefaultAllowPrivilegeEscalation(defaultAllowPrivilegeEscalation): { defaultAllowPrivilegeEscalation: defaultAllowPrivilegeEscalation },
  '#withForbiddenSysctls': d.fn(help='forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.\n\nExamples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.', args=[d.arg(name='forbiddenSysctls', type=d.T.array)]),
  withForbiddenSysctls(forbiddenSysctls): { forbiddenSysctls: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] },
  '#withForbiddenSysctlsMixin': d.fn(help='forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.\n\nExamples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='forbiddenSysctls', type=d.T.array)]),
  withForbiddenSysctlsMixin(forbiddenSysctls): { forbiddenSysctls+: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] },
  '#withHostIPC': d.fn(help='hostIPC determines if the policy allows the use of HostIPC in the pod spec.', args=[d.arg(name='hostIPC', type=d.T.boolean)]),
  withHostIPC(hostIPC): { hostIPC: hostIPC },
  '#withHostNetwork': d.fn(help='hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.', args=[d.arg(name='hostNetwork', type=d.T.boolean)]),
  withHostNetwork(hostNetwork): { hostNetwork: hostNetwork },
  '#withHostPID': d.fn(help='hostPID determines if the policy allows the use of HostPID in the pod spec.', args=[d.arg(name='hostPID', type=d.T.boolean)]),
  withHostPID(hostPID): { hostPID: hostPID },
  '#withHostPorts': d.fn(help='hostPorts determines which host port ranges are allowed to be exposed.', args=[d.arg(name='hostPorts', type=d.T.array)]),
  withHostPorts(hostPorts): { hostPorts: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] },
  '#withHostPortsMixin': d.fn(help='hostPorts determines which host port ranges are allowed to be exposed.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='hostPorts', type=d.T.array)]),
  withHostPortsMixin(hostPorts): { hostPorts+: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] },
  '#withPrivileged': d.fn(help='privileged determines if a pod can request to be run as privileged.', args=[d.arg(name='privileged', type=d.T.boolean)]),
  withPrivileged(privileged): { privileged: privileged },
  '#withReadOnlyRootFilesystem': d.fn(help='readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.', args=[d.arg(name='readOnlyRootFilesystem', type=d.T.boolean)]),
  withReadOnlyRootFilesystem(readOnlyRootFilesystem): { readOnlyRootFilesystem: readOnlyRootFilesystem },
  '#withRequiredDropCapabilities': d.fn(help='requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.', args=[d.arg(name='requiredDropCapabilities', type=d.T.array)]),
  withRequiredDropCapabilities(requiredDropCapabilities): { requiredDropCapabilities: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] },
  '#withRequiredDropCapabilitiesMixin': d.fn(help='requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='requiredDropCapabilities', type=d.T.array)]),
  withRequiredDropCapabilitiesMixin(requiredDropCapabilities): { requiredDropCapabilities+: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] },
  '#withVolumes': d.fn(help="volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.", args=[d.arg(name='volumes', type=d.T.array)]),
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  '#withVolumesMixin': d.fn(help="volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='volumes', type=d.T.array)]),
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  '#mixin': 'ignore',
  mixin: self
}