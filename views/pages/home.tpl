{extends file="layouts/main.tpl"}
{block name="body"}
    <div class="container">
        <div class="row ingredient-title white-row">
            <div class="col-md-12">
                <div class="page-title">
                    <h1>Ingredient of the Month</h1>
                </div>
            </div>
        </div>
        <div class="row ingredient-media white-row">
            <div class="col-md-8 monthly-ingredient">
                <div>
                    <img src="./images/ingredient.jpg" class="ingredient-photo" alt="ingredient of the month photo"/>
                </div>
            </div>
            <div class="col-md-4">
                <div class="page-alt-colour-title ingredient-title">
                    <h1>Carrot</h1>
                    <div class="body-text ingredient-blurb">
                        <p>The carrot, with its distinctive bright orange colour, is one of the most versatile root
                            vegetables
                            around - a result of its sweet flavour, which means it can be used raw or cooked, in sweet
                            or savoury
                            dishes.</p>
                        <p>Carrots should be firm, with unblemished, bright orange skins. In spring, look out for young,
                            thin
                            carrots with their feathery greens still attached - they're particularly tender and
                            sweet.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row blue-row">
            <div class="col-md-12 card-deck-header">
                <h3>Recommended Collections</h3>
            </div>
            <div class="col-md-12 card-deck-row">
                <div class="card-deck">
                    <div class="card hide-overflow">
                        <a class="collection-link" href="./index.php?p=indiv_collection&id=5">
                            <div class="card-img-holder">
                                <img class="card-img-top" src="./images/starter.jpg" alt="image of starter">
                            </div>
                            <div class="card-img-overlay d-flex align-items-center">
                                <h5 class="collection-title">Starters</h5>
                            </div>
                        </a>
                    </div>
                    <div class="card hide-overflow">
                        <a class="collection-link" href="./index.php?p=indiv_collection&id=2">
                            <div class="card-img-holder">
                                <img class="card-img-top" src="./images/dinner.jpg" alt="image of main course">
                            </div>
                            <div class="card-img-overlay d-flex align-items-center">
                                <h5 class="collection-title">Main Courses</h5>
                            </div>
                        </a>
                    </div>
                    <div class="card hide-overflow">
                        <a class="collection-link" href="./index.php?p=indiv_collection&id=11">
                            <div class="card-img-holder">
                                <img class="card-img-top" src="./images/desserts.jpg" alt="image of dessert">
                            </div>
                            <div class="card-img-overlay d-flex align-items-center">
                                <h5 class="collection-title">Desserts</h5>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}
