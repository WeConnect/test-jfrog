# Test JFROG

This repo is to test and try to reproduce some GO dependency issues some people were having with using JFROG artifactory as a GOPROXY. To test, run the following command:

```bash
# Must set user/pass variables with your keys before running
docker build --build-arg ARTIFACTORY_USER="$ARTIFACTORY_USER" --build-arg ARTIFACTORY_APIKEY="$ARTIFACTORY_APIKEY" .
```

If the build succeeds, all packages were properly proxied through artifactory. If it fails, the GOPROXY may not be working properly.
