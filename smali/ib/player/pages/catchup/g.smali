.class public final Lib/player/pages/catchup/g;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/G;
.implements Lz4/m;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/catchup/CatchUpPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lib/player/pages/catchup/CatchUpPlayerActivity;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/catchup/g;->b:I

    iput-object p1, p0, Lib/player/pages/catchup/g;->q:Lib/player/pages/catchup/CatchUpPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lib/player/pages/catchup/g;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/g;->q:Lib/player/pages/catchup/CatchUpPlayerActivity;

    iget v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    iget-object v2, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    invoke-virtual {v0, v1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->x(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lib/player/pages/catchup/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/catchup/g;->q:Lib/player/pages/catchup/CatchUpPlayerActivity;

    iget-object v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->n0:Lz4/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    invoke-virtual {v0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->z()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/g;->q:Lib/player/pages/catchup/CatchUpPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
