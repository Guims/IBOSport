.class public final synthetic Landroidx/media3/exoplayer/source/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/media3/exoplayer/source/V;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/V;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/source/P;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/source/P;->q:Landroidx/media3/exoplayer/source/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/P;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/P;->q:Landroidx/media3/exoplayer/source/V;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/V;->e0:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/V;->H:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/P;->q:Landroidx/media3/exoplayer/source/V;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->v()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/P;->q:Landroidx/media3/exoplayer/source/V;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/V;->Y:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
