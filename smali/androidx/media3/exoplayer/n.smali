.class public final synthetic Landroidx/media3/exoplayer/n;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/n;->b:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/n;->q:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/n;->q:Z

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->g(ZLandroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/n;->q:Z

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i(ZLandroidx/media3/common/Player$Listener;)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/n;->q:Z

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h(ZLandroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
