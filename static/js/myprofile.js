$(function () {
    // 変数を要素をセット
    var $filter = $('.filter-list [data-filter]'),
        $item = $('.filter-item [data-item]');

    // カテゴリをクリックしたら
    $filter.click(function (e) {
        // デフォルトの動作をキャンセル
        e.preventDefault();
        var $this = $(this);

        // クリックしたカテゴリにクラスを付与
        $filter.removeClass('is-active');
        $this.addClass('is-active');

        // クリックした要素のdata属性を取得
        var $filterItem = $this.attr('data-filter');

        // データ属性が all なら全ての要素を表示
        if ($filterItem == 'all') {
            $item.removeClass('is-active').fadeOut().promise().done(function () {
                $item.addClass('is-active').fadeIn();
            });
            // all 以外の場合は、クリックした要素のdata属性の値を同じ値のアイテムを表示
        } else {
            $item.removeClass('is-active').fadeOut().promise().done(function () {
                $item.filter('[data-item ~= "' + $filterItem + '"]').addClass('is-active').fadeIn();
            });
        }
    });
});