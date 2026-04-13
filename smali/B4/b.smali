.class public final synthetic LB4/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LB4/s;

.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LB4/s;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LB4/b;->b:I

    iput-object p1, p0, LB4/b;->q:LB4/s;

    iput-object p2, p0, LB4/b;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LB4/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/b;->q:LB4/s;

    iget-object v1, v0, LB4/s;->w0:[I

    iget-object v2, v0, LB4/s;->B0:Ljava/lang/String;

    iget-object v3, p0, LB4/b;->r:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    aget v4, v1, v3

    if-le v2, v4, :cond_2

    iget-object v2, v0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lio/realm/O;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v4, v0, LB4/s;->n0:Ljava/util/List;

    aget v1, v1, v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v3, v0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v4}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v3, v0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v3}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LB4/h;

    invoke-direct {v4, v0}, LB4/h;-><init>(LB4/s;)V

    invoke-virtual {v1, v3, v2, v4}, Lib/player/base/helper/w;->d(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, LB4/s;->z0(Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LB4/b;->q:LB4/s;

    iget v1, v0, LB4/s;->J0:I

    if-nez v1, :cond_3

    iget-object v1, p0, LB4/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, LB4/s;->c0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LB4/s;->J0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    iget-object v3, v0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v0, v0, LB4/s;->G0:LB4/b;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
