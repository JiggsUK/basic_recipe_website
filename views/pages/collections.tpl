{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row white-row">
            <div class="col-md-12">
                <div class="page-title pt-3">
                    <h1>Collections</h1>
                </div>
            </div>
        </div>
        <div class="row white-row">
            <div class="row page-subtitle-left-padding ml-3">
                <h3>Courses</h3>
            </div>
            <div class="row ml-3 mr-3 mt-3">
                {foreach from=$course_data item=collection}
                    <div class="col-md-4 mb-3">
                        <div class="card-deck">
                            <div class="card hide-overflow">
                                <a class="collection-link"
                                   href="./index.php?p=indiv_collection&id={$collection.collection_id}">
                                    <div class="card-img-holder">
                                        <img class="card-img-top"
                                             src="./images/{$collection.collection_image}.jpg"
                                             alt="image of {$collection.collection_name}">
                                    </div>
                                    <div class="card-img-overlay d-flex align-items-center">
                                        <h5 class="collection-title">{$collection.collection_name}</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="row ml-auto mr-3">
                <a class="complete-collection"
                   href="./index.php?p=all_collection_theme&id=1">
                    <h3>See all...</h3>
                </a>
            </div>
        </div>
        <div class="row blue-row">
            <div class="col-md-12 page-alt-subtitle-left ml-3 pt-3">
                <h3>Regional</h3>
            </div>
            <div class="row ml-3 mr-3 mt-3">
                {foreach from=$cuisine_data item=collection}
                    <div class="col-md-4 mb-3">
                        <div class="card-deck">
                            <div class="card hide-overflow">
                                <a class="collection-link"
                                   href="./index.php?p=indiv_collection&id={$collection.collection_id}">
                                    <div class="card-img-holder">
                                        <img class="card-img-top"
                                             src="./images/{$collection.collection_image}.jpg"
                                             alt="image of {$collection.collection_name}">
                                    </div>
                                    <div class="card-img-overlay d-flex align-items-center">
                                        <h5 class="collection-title">{$collection.collection_name}</h5>
                                    </div>
                                </a>
                            </div>

                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="row ml-auto mr-3">
                <a class="complete-collection complete-collection-alt"
                   href="./index.php?p=all_collection_theme&id=2">
                    <h3>See all...</h3>
                </a>
            </div>
        </div>
    </div>
{/block}
