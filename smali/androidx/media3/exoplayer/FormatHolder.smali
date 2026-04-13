.class public final Landroidx/media3/exoplayer/FormatHolder;
.super Ljava/lang/Object;


# instance fields
.field public drmSession:Lu0/j;

.field public format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    iput-object v0, p0, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    return-void
.end method
