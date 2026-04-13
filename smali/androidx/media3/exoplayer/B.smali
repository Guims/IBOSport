.class public final synthetic Landroidx/media3/exoplayer/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic r:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/B;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/B;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/B;->r:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/B;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/B;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/B;->r:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->e(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/B;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/B;->r:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->i(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/B;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/B;->r:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->c(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/B;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/B;->r:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->j(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
