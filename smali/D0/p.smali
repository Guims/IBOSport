.class public final LD0/p;
.super LD0/r;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final A:I

.field public final B:Z

.field public final t:I

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILD0/l;ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, LD0/r;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, LD0/p;->u:Z

    iget-object p2, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->selectionFlags:I

    iget p3, p4, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, LD0/p;->v:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, LD0/p;->w:Z

    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lp3/H;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ""

    invoke-static {p2}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lp3/H;

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_4

    iget-object v1, p0, LD0/r;->s:Landroidx/media3/common/Format;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p4, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    invoke-static {v1, v3, v4}, LD0/t;->c(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    move v1, p1

    move p3, v2

    :goto_4
    iput p3, p0, LD0/p;->x:I

    iput v1, p0, LD0/p;->y:I

    iget-object p2, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->roleFlags:I

    iget p3, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    sget-object v3, LD0/t;->j:Lp3/X;

    if-eqz p2, :cond_5

    if-ne p2, p3, :cond_5

    goto :goto_5

    :cond_5
    and-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    :goto_5
    iput v2, p0, LD0/p;->z:I

    iget-object p2, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 p2, p2, 0x440

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_6

    :cond_6
    move p2, p1

    :goto_6
    iput-boolean p2, p0, LD0/p;->B:Z

    invoke-static {p6}, LD0/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    move p2, v0

    goto :goto_7

    :cond_7
    move p2, p1

    :goto_7
    iget-object p3, p0, LD0/r;->s:Landroidx/media3/common/Format;

    invoke-static {p3, p6, p2}, LD0/t;->c(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, LD0/p;->A:I

    if-gtz v1, :cond_a

    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lp3/H;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    if-gtz v2, :cond_a

    :cond_8
    iget-boolean p3, p0, LD0/p;->v:Z

    if-nez p3, :cond_a

    iget-boolean p3, p0, LD0/p;->w:Z

    if-eqz p3, :cond_9

    if-lez p2, :cond_9

    goto :goto_8

    :cond_9
    move p2, p1

    goto :goto_9

    :cond_a
    :goto_8
    move p2, v0

    :goto_9
    iget-boolean p3, p4, LD0/l;->f:Z

    invoke-static {p5, p3}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p3

    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    move p1, v0

    :cond_b
    iput p1, p0, LD0/p;->t:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD0/p;->t:I

    return v0
.end method

.method public final bridge synthetic b(LD0/r;)Z
    .locals 0

    check-cast p1, LD0/p;

    const/4 p1, 0x0

    return p1
.end method

.method public final c(LD0/p;)I
    .locals 7

    iget-boolean v0, p0, LD0/p;->u:Z

    iget-boolean v1, p1, LD0/p;->u:Z

    sget-object v2, Lp3/y;->a:Lp3/w;

    invoke-virtual {v2, v0, v1}, Lp3/w;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/p;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LD0/p;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lp3/W;->q:Lp3/W;

    sget-object v4, Lp3/W;->r:Lp3/W;

    invoke-virtual {v0, v1, v2, v4}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget v1, p1, LD0/p;->y:I

    iget v2, p0, LD0/p;->y:I

    invoke-virtual {v0, v2, v1}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget v1, p1, LD0/p;->z:I

    iget v5, p0, LD0/p;->z:I

    invoke-virtual {v0, v5, v1}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/p;->v:Z

    iget-boolean v6, p1, LD0/p;->v:Z

    invoke-virtual {v0, v1, v6}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/p;->w:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v6, p1, LD0/p;->w:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v6, v3}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/p;->A:I

    iget v2, p1, LD0/p;->A:I

    invoke-virtual {v0, v1, v2}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    if-nez v5, :cond_1

    iget-boolean v1, p0, LD0/p;->B:Z

    iget-boolean p1, p1, LD0/p;->B:Z

    invoke-virtual {v0, v1, p1}, Lp3/y;->d(ZZ)Lp3/y;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lp3/y;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LD0/p;

    invoke-virtual {p0, p1}, LD0/p;->c(LD0/p;)I

    move-result p1

    return p1
.end method
