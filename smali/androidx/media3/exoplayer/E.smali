.class public final synthetic Landroidx/media3/exoplayer/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic q:Landroid/util/Pair;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/E;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/E;->q:Landroid/util/Pair;

    iput p3, p0, Landroidx/media3/exoplayer/E;->r:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/E;->q:Landroid/util/Pair;

    iget v1, p0, Landroidx/media3/exoplayer/E;->r:I

    iget-object v2, p0, Landroidx/media3/exoplayer/E;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->a(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    return-void
.end method
