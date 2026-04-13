.class public final synthetic LD0/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LD0/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, LD0/c;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lt0/b;

    check-cast p2, Lt0/b;

    iget v0, p1, Lt0/b;->c:I

    iget v1, p2, Lt0/b;->c:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lt0/b;->b:Ljava/lang/String;

    iget-object p2, p2, Lt0/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    check-cast p1, Lr1/D;

    check-cast p2, Lr1/D;

    iget v0, p2, Lr1/D;->a:I

    iget v1, p1, Lr1/D;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lr1/D;->c:Ljava/lang/String;

    iget-object v1, p1, Lr1/D;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lr1/D;->d:Ljava/lang/String;

    iget-object p1, p1, Lr1/D;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    check-cast p1, Lr1/D;

    check-cast p2, Lr1/D;

    iget v0, p2, Lr1/D;->b:I

    iget v1, p1, Lr1/D;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lr1/D;->c:Ljava/lang/String;

    iget-object v1, p2, Lr1/D;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lr1/D;->d:Ljava/lang/String;

    iget-object p2, p2, Lr1/D;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_2
    return v0

    :pswitch_2
    check-cast p1, Ln1/c;

    check-cast p2, Ln1/c;

    iget-wide v0, p1, Ln1/c;->b:J

    iget-wide p1, p2, Ln1/c;->b:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Ln1/d;

    check-cast p2, Ln1/d;

    iget-object p1, p1, Ln1/d;->a:Ln1/e;

    iget p1, p1, Ln1/e;->b:I

    iget-object p2, p2, Ln1/d;->a:Ln1/e;

    iget p2, p2, Ln1/e;->b:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Lg1/d;

    check-cast p2, Lg1/d;

    iget p2, p2, Lg1/d;->b:I

    iget p1, p1, Lg1/d;->b:I

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget v0, LK3/a;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, [B

    check-cast p2, [B

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_5

    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_7

    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_6

    sub-int p1, v2, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_4
    return p1

    :pswitch_8
    check-cast p1, LH3/r0;

    check-cast p2, LH3/r0;

    check-cast p1, LH3/F;

    iget-object p1, p1, LH3/F;->a:Ljava/lang/String;

    check-cast p2, LH3/F;

    iget-object p2, p2, LH3/F;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, LE0/w;

    check-cast p2, LE0/w;

    iget p1, p1, LE0/w;->c:F

    iget p2, p2, LE0/w;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, LE0/w;

    check-cast p2, LE0/w;

    iget p1, p1, LE0/w;->a:I

    iget p2, p2, LE0/w;->a:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_c
    check-cast p1, LD0/s;

    check-cast p2, LD0/s;

    iget-boolean v0, p1, LD0/s;->t:Z

    iget v1, p1, LD0/s;->y:I

    if-eqz v0, :cond_8

    iget-boolean v0, p1, LD0/s;->w:Z

    if-eqz v0, :cond_8

    sget-object v0, LD0/t;->j:Lp3/X;

    goto :goto_5

    :cond_8
    sget-object v0, LD0/t;->j:Lp3/X;

    invoke-virtual {v0}, Lp3/X;->a()Lp3/X;

    move-result-object v0

    :goto_5
    iget-object v2, p1, LD0/s;->u:LD0/l;

    iget-boolean v2, v2, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    sget-object v3, Lp3/y;->a:Lp3/w;

    if-eqz v2, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, LD0/s;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, LD0/t;->j:Lp3/X;

    invoke-virtual {v5}, Lp3/X;->a()Lp3/X;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lp3/w;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v3

    :cond_9
    iget p1, p1, LD0/s;->z:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, p2, LD0/s;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p1, v2, v0}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p2, p2, LD0/s;->y:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object p1

    invoke-virtual {p1}, Lp3/y;->e()I

    move-result p1

    return p1

    :pswitch_d
    check-cast p1, LD0/s;

    check-cast p2, LD0/s;

    invoke-static {p1, p2}, LD0/s;->c(LD0/s;LD0/s;)I

    move-result p1

    return p1

    :pswitch_e
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/p;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LD0/p;

    invoke-virtual {p1, p2}, LD0/p;->c(LD0/p;)I

    move-result p1

    return p1

    :pswitch_f
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance v0, LD0/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/s;

    new-instance v1, LD0/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LD0/c;-><init>(I)V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/s;

    invoke-static {v0, v1}, LD0/s;->c(LD0/s;LD0/s;)I

    move-result v0

    invoke-static {v0}, Lp3/w;->f(I)Lp3/y;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    new-instance v1, LD0/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LD0/c;-><init>(I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/s;

    new-instance v1, LD0/c;

    invoke-direct {v1, v2}, LD0/c;-><init>(I)V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LD0/s;

    new-instance v1, LD0/c;

    invoke-direct {v1, v2}, LD0/c;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object p1

    invoke-virtual {p1}, Lp3/y;->e()I

    move-result p1

    return p1

    :pswitch_10
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/h;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LD0/h;

    invoke-virtual {p1, p2}, LD0/h;->c(LD0/h;)I

    move-result p1

    return p1

    :pswitch_11
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LD0/i;

    iget p1, p1, LD0/i;->u:I

    iget p2, p2, LD0/i;->u:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_12
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int v1, p1, p2

    :cond_c
    :goto_6
    return v1

    :pswitch_13
    check-cast p1, Landroidx/media3/common/Format;

    check-cast p2, Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    sub-int/2addr p2, p1

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
