.class public final LB0/c;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/Format;

.field public final c:LI0/o;

.field public d:Landroidx/media3/common/Format;

.field public e:LI0/L;

.field public f:J


# direct methods
.method public constructor <init>(IILandroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LB0/c;->a:I

    iput-object p3, p0, LB0/c;->b:Landroidx/media3/common/Format;

    new-instance p1, LI0/o;

    invoke-direct {p1}, LI0/o;-><init>()V

    iput-object p1, p0, LB0/c;->c:LI0/o;

    return-void
.end method


# virtual methods
.method public final format(Landroidx/media3/common/Format;)V
    .locals 2

    iget-object v0, p0, LB0/c;->b:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, LB0/c;->d:Landroidx/media3/common/Format;

    iget-object v0, p0, LB0/c;->e:LI0/L;

    sget v1, Lk0/C;->a:I

    invoke-interface {v0, p1}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1

    iget-object p4, p0, LB0/c;->e:LI0/L;

    sget v0, Lk0/C;->a:I

    invoke-interface {p4, p1, p2, p3}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 1

    iget-object p3, p0, LB0/c;->e:LI0/L;

    sget v0, Lk0/C;->a:I

    invoke-interface {p3, p1, p2}, LI0/L;->sampleData(Lk0/u;I)V

    return-void
.end method

.method public final sampleMetadata(JIIILI0/K;)V
    .locals 8

    iget-wide v0, p0, LB0/c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, LB0/c;->c:LI0/o;

    iput-object v0, p0, LB0/c;->e:LI0/L;

    :cond_0
    iget-object v1, p0, LB0/c;->e:LI0/L;

    sget v0, Lk0/C;->a:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return-void
.end method
