.class public abstract LD0/r;
.super Ljava/lang/Object;


# instance fields
.field public final b:I

.field public final q:Landroidx/media3/common/TrackGroup;

.field public final r:I

.field public final s:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LD0/r;->b:I

    iput-object p2, p0, LD0/r;->q:Landroidx/media3/common/TrackGroup;

    iput p3, p0, LD0/r;->r:I

    invoke-virtual {p2, p3}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, LD0/r;->s:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(LD0/r;)Z
.end method
