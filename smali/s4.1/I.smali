.class public final synthetic Ls4/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ls4/J;

.field public final synthetic r:Lio/realm/O;


# direct methods
.method public synthetic constructor <init>(Ls4/J;Lio/realm/O;II)V
    .locals 0

    iput p4, p0, Ls4/I;->b:I

    iput-object p1, p0, Ls4/I;->q:Ls4/J;

    iput-object p2, p0, Ls4/I;->r:Lio/realm/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    iget p1, p0, Ls4/I;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ls4/I;->q:Ls4/J;

    iget-object v0, p0, Ls4/I;->r:Lio/realm/O;

    check-cast v0, Lib/player/models/MovieModel;

    invoke-virtual {v0}, Lib/player/models/MovieModel;->isIs_favorite()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Le4/c;

    iget-object v1, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast v1, LD4/x;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, LD4/t;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, LD4/t;-><init>(Le4/c;I)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1, v3}, Lib/player/base/helper/w;->b(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Le4/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lib/player/base/n;->v:Ljava/util/ArrayList;

    iget-object v3, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast v3, LD4/x;

    iget-object v4, v3, LD4/x;->p0:Ljava/util/ArrayList;

    iget v5, v3, LD4/x;->s0:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CategoryModel;

    invoke-virtual {v4}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, LD4/t;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, LD4/t;-><init>(Le4/c;I)V

    invoke-virtual {v1, v0, v2, v3}, Lib/player/base/helper/w;->b(Ljava/lang/String;ZLib/player/base/helper/x;)V

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object p1, p0, Ls4/I;->q:Ls4/J;

    iget-object v0, p0, Ls4/I;->r:Lio/realm/O;

    check-cast v0, Lib/player/models/SeriesModel;

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->isIs_favorite()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    iget-object v1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v1, Lib/player/pages/series/j;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lib/player/pages/series/i;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lib/player/pages/series/i;-><init>(Lcom/bumptech/glide/f;I)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1, v3}, Lib/player/base/helper/w;->c(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    iget-object v1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v1, Lib/player/pages/series/j;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v0}, Lib/player/models/SeriesModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lib/player/pages/series/i;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lib/player/pages/series/i;-><init>(Lcom/bumptech/glide/f;I)V

    invoke-virtual {v1, v0, v2, v3}, Lib/player/base/helper/w;->c(Ljava/lang/String;ZLib/player/base/helper/x;)V

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
