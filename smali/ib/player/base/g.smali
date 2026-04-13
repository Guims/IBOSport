.class public final synthetic Lib/player/base/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/Response;I)V
    .locals 0

    iput p2, p0, Lib/player/base/g;->b:I

    iput-object p1, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lio/realm/y;)V
    .locals 2

    iget v0, p0, Lib/player/base/g;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lib/player/models/MovieModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    :pswitch_0
    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    :pswitch_1
    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    :pswitch_2
    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    :pswitch_3
    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    :pswitch_4
    const-class v0, Lib/player/models/MovieModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/g;->q:Lretrofit2/Response;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/l;

    invoke-virtual {p1, v0, v1}, Lio/realm/y;->A(Ljava/lang/Iterable;[Lio/realm/l;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
