.class public final synthetic Landroidx/media3/exoplayer/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic r:Landroid/util/Pair;

.field public final synthetic s:Landroidx/media3/exoplayer/source/v;

.field public final synthetic t:Landroidx/media3/exoplayer/source/A;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V
    .locals 0

    iput p5, p0, Landroidx/media3/exoplayer/D;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/D;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/D;->r:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/D;->s:Landroidx/media3/exoplayer/source/v;

    iput-object p4, p0, Landroidx/media3/exoplayer/D;->t:Landroidx/media3/exoplayer/source/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/D;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/D;->s:Landroidx/media3/exoplayer/source/v;

    iget-object v1, p0, Landroidx/media3/exoplayer/D;->t:Landroidx/media3/exoplayer/source/A;

    iget-object v2, p0, Landroidx/media3/exoplayer/D;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v3, p0, Landroidx/media3/exoplayer/D;->r:Landroid/util/Pair;

    invoke-static {v2, v3, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->g(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/D;->s:Landroidx/media3/exoplayer/source/v;

    iget-object v1, p0, Landroidx/media3/exoplayer/D;->t:Landroidx/media3/exoplayer/source/A;

    iget-object v2, p0, Landroidx/media3/exoplayer/D;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v3, p0, Landroidx/media3/exoplayer/D;->r:Landroid/util/Pair;

    invoke-static {v2, v3, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->b(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/D;->s:Landroidx/media3/exoplayer/source/v;

    iget-object v1, p0, Landroidx/media3/exoplayer/D;->t:Landroidx/media3/exoplayer/source/A;

    iget-object v2, p0, Landroidx/media3/exoplayer/D;->q:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v3, p0, Landroidx/media3/exoplayer/D;->r:Landroid/util/Pair;

    invoke-static {v2, v3, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->d(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
