.class public final synthetic Landroidx/media3/exoplayer/source/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/F;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/k;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/k;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/h;->a:Landroidx/media3/exoplayer/source/k;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/G;Landroidx/media3/common/Timeline;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/h;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/h;->a:Landroidx/media3/exoplayer/source/k;

    invoke-virtual {v1, v0, p1, p2}, Landroidx/media3/exoplayer/source/k;->x(Ljava/lang/Object;Landroidx/media3/exoplayer/source/a;Landroidx/media3/common/Timeline;)V

    return-void
.end method
