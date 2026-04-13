.class public final synthetic Landroidx/media3/exoplayer/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/s;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/s;->q:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/s;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/s;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/s;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Landroidx/media3/exoplayer/s;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/s;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, p0, Landroidx/media3/exoplayer/s;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
