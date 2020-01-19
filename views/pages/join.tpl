{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row pt-3">
            <div class="col-md-12">
                <div class="page-title">
                    <h1>Sign Up</h1>
                </div>
            </div>
        </div>
        <div class="row white-row pt-3">
            <div class="col-md-12">
                <div class="body-text">
                    <p>Welcome to Recipe Central!</p>
                    <p>To join our community, please fill in the form below and start reviewing recipes today!</p>
                </div>
            </div>
        </div>
        <div class="row white-row pb-5">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                {if $error}
                    <div class="alert alert-danger text-center" role="alert">
                        {$error}
                    </div>
                {/if}
                <form action="" method="post">
                    <div class="form-group">
                        <label class="required" for="name">Display Name</label>
                        <input type="text" class="form-control" id="name" name="fullName" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label class="required" for="email">Email address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label class="required" for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password"
                               placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label class="required" for="confirm-password">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm-password" name="confirmPassword"
                               placeholder="Confirm Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Register</button>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
{/block}
