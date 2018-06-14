# Test configuration: a label to append to pbench directories and mb result directories.
export TEST_CFG=${TEST_CFG:-1router}
# A list of paths to k8s configuration files.  Colon-delimited for Linux.
export KUBECONFIG=${KUBECONFIG:-/root/.kube/config}
# Setup pbench using "Pbench Ansible".
export SETUP_PBENCH=${SETUP_PBENCH:-true}
# Set pbench_results_redirector and pbench_web_server.
export PBENCH_SERVER=${PBENCH_SERVER:-pbench.perf.lab.eng.bos.redhat.com}
# Clear results from previous pbench runs.
export CLEAR_RESULTS=${CLEAR_RESULTS:-true}
# A path to the inventory to needed by "Pbench Ansible":
# https://github.com/distributed-system-analysis/pbench/tree/master/contrib/ansible/openshift
# and possibly generated by openshift_labeller:
# https://github.com/chaitanyaenr/openshift-labeler
export TOOLING_INVENTORY=${TOOLING_INVENTORY:-/root/tooling_inventory}
# Move the benchmark results to a pbench server
export MOVE_RESULTS=${MOVE_RESULTS:-false}
# Move the benchmark results to a pbench server
export CONTAINERIZED=${CONTAINERIZED:-false}
# HTTP-test specifics
# A synchronization endpoint listening at :9090 by default.
export GUN=${GUN:-b1.lan}
# username@server to scp results from workload generator node(s) to.
export SERVER_RESULTS=${SERVER_RESULTS:-root@$GUN}
# Comma separated load-generator nodes (use "oc get nodes" node names).
export LOAD_GENERATOR_NODES=${LOAD_GENERATOR_NODES:-b5.lan}
# Number of projects to create for each type of application (4 types currently).
export CL_PROJECTS=${CL_PROJECTS:-10}
# Number of templates to create per project.
export CL_TEMPLATES=${CL_TEMPLATES:-1}
# Run time of individual HTTP test iterations in seconds.
export RUN_TIME=${RUN_TIME:-120}
# Perform the test for the following (comma-separated) route terminations: mix,http,edge,passthrough,reencrypt
export ROUTE_TERMINATION=${ROUTE_TERMINATION:-mix}
# Run only a single HTTP test to establish functionality.
export SMOKE_TEST=${SMOKE_TEST:-false}
# Delete all namespaces with application pods, services and routes created for the purposes of HTTP tests.
export NAMESPACE_CLEANUP=${NAMESPACE_CLEANUP:-true}
