.class final Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Landroidx/media3/exoplayer/source/F;

.field public final eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Landroidx/media3/exoplayer/source/G;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/G;Landroidx/media3/exoplayer/source/F;Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/G;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/F;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    return-void
.end method
