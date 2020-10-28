# acf-lambda
ACF Public Beta Lambda

Sign up to:  https://www.adobeprerelease.com/ ACF 2020

Download the ACF serverless package

Unzip into a folder, copy these files into that folder ( overwite the template.yml )

Move the 2 files int eh cfml_code to ./cfusion/wwwroot ( overright the existing Application.cfc )

Then run:

```bash
#make the lambdazipper executable
chmod +x ./cfusion/bin/lambdazip.sh
#build the package
make build
#initial deployment
sam deploy --guided
```

This will assist you in deploying the function to the desired region.

Once you are ready to make further code changes and redeploy simply run:

```
make deploy
```
