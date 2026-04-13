.class public final synthetic Landroidx/media3/exoplayer/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic r:Landroid/util/Pair;

.field public final synthetic s:Landroidx/media3/exoplayer/source/A;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/exoplayer/A;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/A;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/A;->r:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/A;->s:Landroidx/media3/exoplayer/source/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/A;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/A;->r:Landroid/util/Pair;

    iget-object v1, p0, Landroidx/media3/exoplayer/A;->s:Landroidx/media3/exoplayer/source/A;

    iget-object v2, p0, Landroidx/media3/exoplayer/A;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->l(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/A;->r:Landroid/util/Pair;

    iget-object v1, p0, Landroidx/media3/exoplayer/A;->s:Landroidx/media3/exoplayer/source/A;

    iget-object v2, p0, Landroidx/media3/exoplayer/A;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->f(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
