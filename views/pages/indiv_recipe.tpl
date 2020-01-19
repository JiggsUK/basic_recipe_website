{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row recipe-header white-row">
            <div class="col-md-12 text-center">
                <img src="./images/{$recipe_data.recipe_image}.jpg" class="recipe-photo img-fluid"/>
            </div>
            <div class="col-md-12">
                <div class="page-title text-center pt-3">
                    <h1>{$recipe_data.recipe_name}</h1>
                </div>
                <div class="body-text pt-3">
                    <p>{$recipe_data.recipe_summary}</p>
                </div>
                <div class="row pt-3">
                    <div class="col-md-4">
                        <div class="star-ratings-sprite ml-auto">
                            <span style="width:{$rating}%" class="star-ratings-sprite-rating"></span>
                        </div>
                    </div>
                    <div class="col-md-4 text-center">
                        <div class="prep-cook-time">
                            <i class="fas fa-clock fa-icons-recipe-specs"></i>
                            Prep Time: {$recipe_data.cook_time} mins
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="serving mr-auto">
                            <i class="fas fa-utensils fa-icons-recipe-specs"></i>
                            Serving: {$recipe_data.serving}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row white-row pt-5 pb-3">
            <div class="col-md-3 page-subtitle-left">
                <h3>Ingredient List</h3>
                <ul class="ingredient-listing list-unstyled">
                    {foreach from=$recipe_data.ingredients item=ingredient}
                        <li>{$ingredient}</li>
                    {/foreach}
                </ul>
            </div>
            <div class="col-md-9 body-text-left page-subtitle-left">
                <h3>Method</h3>
                <ol class="method-listing">
                    {foreach from=$recipe_data.method item=step}
                        <li>{$step}</li>
                    {/foreach}
                </ol>
            </div>
        </div>
        <div class="row blue-row">
            <div class="col-md-7 page-alt-subtitle-left mt-3">
                <h3>Reviews</h3>
            </div>
            <div class="col-md-5 page-alt-subtitle-left mt-3">
                <h3>Leave a review</h3>
            </div>
        </div>
        <div class="row blue-row">
            <div class="col-md-7 pl-5">
                {foreach from=$reviews item=review}
                    <div class="card review-card">
                        <div class="card-body body-text-left">
                            <h6 class="card-subtitle">{$review.user_name}</h6>
                            <p class="card-text">{$review.user_review}</p>
                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="col-md-5 page-alt-subtitle-left text-center">
                {if $user_data}
                    <p class="card-text-alt">Complete the form below to leave a review for this recipe.</p>
                    <form action="" method="post">
                        <div class="form-group pt-3">
                            <label class="card-text-alt required" for="rating">Rating</label>
                            <select class="form-control select-menu review-rating" id="rating" name="rating">
                                <option value="" disabled selected>Select</option>
                                <option value="1">1 Star</option>
                                <option value="2">2 Star</option>
                                <option value="3">3 Star</option>
                                <option value="4">4 Star</option>
                                <option value="5">5 Star</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="card-text-alt required" for="reviewText">Review</label>
                            <textarea class="form-control" id="reviewText" rows="3" name="reviewText"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Rating</button>
                    </form>
                {else}
                    <div class="col-md-12 text-center">
                        <p class="card-text">You must be logged in to leave a review.</p>
                        <div class="col-md-12 mt-3">
                            <a class="btn btn-primary" href="./index.php?p=login">Log in</a>
                        </div>
                        <div class="col-md-12 mt-3">
                            <a class="btn btn-primary" href="./index.php?p=join">Sign Up</a>
                        </div>
                    </div>
                {/if}
            </div>
        </div>
    </div>
{/block}
