// Copyright (c) HashiCorp, Inc
// SPDX-License-Identifier: MPL-2.0
import { Construct } from "constructs";
import { App, TerraformStack } from "cdktf";
import * as Null from './.gen/providers/null';

class MyStack extends TerraformStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    new Null.provider.NullProvider(this, 'test-provider');
    new Null.resource.Resource(this, 'test');
  }
}

const app = new App();
new MyStack(app, "cdktf-stack");
app.synth();
