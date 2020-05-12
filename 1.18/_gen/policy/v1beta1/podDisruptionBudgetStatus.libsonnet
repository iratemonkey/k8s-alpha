{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='podDisruptionBudgetStatus', url='', help='PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.'),
  '#withCurrentHealthy': d.fn(help='current number of healthy pods', args=[d.arg(name='currentHealthy', type=d.T.integer)]),
  withCurrentHealthy(currentHealthy): { currentHealthy: currentHealthy },
  '#withDesiredHealthy': d.fn(help='minimum desired number of healthy pods', args=[d.arg(name='desiredHealthy', type=d.T.integer)]),
  withDesiredHealthy(desiredHealthy): { desiredHealthy: desiredHealthy },
  '#withDisruptedPods': d.fn(help="DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.", args=[d.arg(name='disruptedPods', type=d.T.object)]),
  withDisruptedPods(disruptedPods): { disruptedPods: disruptedPods },
  '#withDisruptedPodsMixin': d.fn(help="DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='disruptedPods', type=d.T.object)]),
  withDisruptedPodsMixin(disruptedPods): { disruptedPods+: disruptedPods },
  '#withDisruptionsAllowed': d.fn(help='Number of pod disruptions that are currently allowed.', args=[d.arg(name='disruptionsAllowed', type=d.T.integer)]),
  withDisruptionsAllowed(disruptionsAllowed): { disruptionsAllowed: disruptionsAllowed },
  '#withExpectedPods': d.fn(help='total number of pods counted by this disruption budget', args=[d.arg(name='expectedPods', type=d.T.integer)]),
  withExpectedPods(expectedPods): { expectedPods: expectedPods },
  '#withObservedGeneration': d.fn(help="Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.", args=[d.arg(name='observedGeneration', type=d.T.integer)]),
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  '#mixin': 'ignore',
  mixin: self
}