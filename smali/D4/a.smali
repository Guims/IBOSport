.class public final LD4/a;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/movie/MovieCreditActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/movie/MovieCreditActivity;I)V
    .locals 0

    iput p2, p0, LD4/a;->b:I

    iput-object p1, p0, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, LD4/a;->b:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "No Trailer"

    const/4 p2, 0x0

    iget-object v0, p0, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6

    iget p1, p0, LD4/a;->b:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "vnd.youtube:"

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/TMDBVideoResponse;

    invoke-virtual {v0}, Lib/player/models/TMDBVideoResponse;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/TMDBVideoResponse;

    invoke-virtual {p2}, Lib/player/models/TMDBVideoResponse;->getResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/TMDBVideoModel;

    invoke-virtual {p2}, Lib/player/models/TMDBVideoModel;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "android.intent.action.VIEW"

    if-eqz v0, :cond_1

    invoke-static {v2}, Lv4/c;->v(Landroid/content/Context;)LE1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p1, LE1/a;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Please install youtube App."

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10808000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p1, "No Trailer"

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_0
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, LD4/a;->q:Lib/player/pages/movie/MovieCreditActivity;

    iget-object v0, p1, Lib/player/pages/movie/MovieCreditActivity;->Y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/MovieCreditResponse;

    invoke-virtual {v1}, Lib/player/models/MovieCreditResponse;->getCast()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/MovieCreditResponse;

    invoke-virtual {p2}, Lib/player/models/MovieCreditResponse;->getCast()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/MovieCreditModel;

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v1}, Lib/player/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Lio/realm/y;

    const-class v4, Lib/player/models/MovieModel;

    invoke-virtual {v2, v4}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v4, "name"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lio/realm/RealmQuery;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Lio/realm/RealmQuery;->h()Lio/realm/M;

    move-result-object v2

    check-cast v2, Lib/player/models/MovieModel;

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lib/player/pages/movie/MovieCreditActivity;->a0:Lr1/i;

    iput-object v0, p2, Lr1/i;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Lv1/y;->d()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/MovieCreditModel;

    invoke-virtual {p1, p2}, Lib/player/pages/movie/MovieCreditActivity;->w(Lib/player/models/MovieCreditModel;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
