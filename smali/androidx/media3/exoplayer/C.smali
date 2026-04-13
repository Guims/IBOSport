.class public final synthetic Landroidx/media3/exoplayer/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic q:Landroid/util/Pair;

.field public final synthetic r:Landroidx/media3/exoplayer/source/v;

.field public final synthetic s:Landroidx/media3/exoplayer/source/A;

.field public final synthetic t:Ljava/io/IOException;

.field public final synthetic u:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/C;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/C;->q:Landroid/util/Pair;

    iput-object p3, p0, Landroidx/media3/exoplayer/C;->r:Landroidx/media3/exoplayer/source/v;

    iput-object p4, p0, Landroidx/media3/exoplayer/C;->s:Landroidx/media3/exoplayer/source/A;

    iput-object p5, p0, Landroidx/media3/exoplayer/C;->t:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media3/exoplayer/C;->u:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Landroidx/media3/exoplayer/C;->t:Ljava/io/IOException;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/C;->u:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/C;->b:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/C;->q:Landroid/util/Pair;

    iget-object v2, p0, Landroidx/media3/exoplayer/C;->r:Landroidx/media3/exoplayer/source/v;

    iget-object v3, p0, Landroidx/media3/exoplayer/C;->s:Landroidx/media3/exoplayer/source/A;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->h(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    return-void
.end method
