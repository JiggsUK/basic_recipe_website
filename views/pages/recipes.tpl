{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row">
            <div class="col-md-12">
                <div class="page-title pt-3">
                    <h1>Recipes</h1>
                </div>
            </div>
        </div>
        <div class="row white-row">
            <div class="col-md-4 recipe-filter">
                <div class="container filter-options">
                    <form action="" method="post">
                        <div class="form-group body-text-left">
                            <label for="courseFilter">Courses</label>
                            <select class="form-control select-menu" id="course-filter" name="course">
                                <option value="" disabled selected>-- select --</option>
                                {foreach from=$course_list item=course}
                                    <option value="{$course.collection_id}">{$course.collection_name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group body-text-left">
                            <label for="cuisineFilter">Cuisine</label>
                            <select class="form-control select-menu" id="cuisine-filter" name="cuisine">
                                <option value="" disabled selected>-- select --</option>
                                {foreach from=$cuisine_list item=cuisine}
                                    <option value="{$cuisine.collection_id}">{$cuisine.collection_name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group body-text-left">
                            <label for="servingFilter">Servings</label>
                            <select class="form-control select-menu" id="serving-filter" name="serving">
                                <option value="" disabled selected>-- select --</option>
                                {foreach from=$serving_list item=serving}
                                    <option value="{$serving.serving}">{$serving.serving}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Apply</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    {foreach from=$recipe_data item=recipe}
                        <div class="col-md-4 recipe-row">
                            <div class="card-deck">
                                <a class="recipe-link" href="./index.php?p=indiv_recipe&id={$recipe.recipe_id}">
                                    <div class="card card-hover">
                                        <div class="card-img-holder">
                                            <img class="card-img" src="./images/{$recipe.image_name}.jpg"
                                                 alt="image of {$recipe.recipe_name}">
                                        </div>
                                        <div class="card-body text-center">
                                            <h5 class="recipe-title">{$recipe.recipe_name}</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}
