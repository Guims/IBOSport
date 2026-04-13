.class public final LD0/i;
.super LD0/r;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final t:I

.field public final u:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILD0/l;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LD0/r;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iget-boolean p1, p4, LD0/l;->f:Z

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p1

    iput p1, p0, LD0/i;->t:I

    iget-object p1, p0, LD0/r;->s:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Landroidx/media3/common/Format;->getPixelCount()I

    move-result p1

    iput p1, p0, LD0/i;->u:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD0/i;->t:I

    return v0
.end method

.method public final bridge synthetic b(LD0/r;)Z
    .locals 0

    check-cast p1, LD0/i;

    const/4 p1, 0x0

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LD0/i;

    iget v0, p0, LD0/i;->u:I

    iget p1, p1, LD0/i;->u:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
