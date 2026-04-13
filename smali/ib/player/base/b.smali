.class public final synthetic Lib/player/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;
.implements Lk0/n;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lib/player/base/b;->b:I

    iput-object p2, p0, Lib/player/base/b;->q:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq0/b;Ljava/util/List;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lib/player/base/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lib/player/base/b;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lq0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public j(Lio/realm/y;)V
    .locals 1

    iget v0, p0, Lib/player/base/b;->b:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lib/player/models/EpisodeModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    const-class v0, Lib/player/models/SeriesModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/b;->q:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/realm/y;->F(Ljava/util/Collection;)V

    return-void

    :pswitch_0
    const-class v0, Lib/player/models/MovieModel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/b;->q:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/realm/y;->F(Ljava/util/Collection;)V

    return-void

    :pswitch_1
    const-class v0, Lib/player/models/EPGChannel;

    invoke-virtual {p1, v0}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/T;->d()V

    iget-object v0, p0, Lib/player/base/b;->q:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/realm/y;->F(Ljava/util/Collection;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
