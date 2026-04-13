.class public final Lv0/u;
.super Ljava/lang/Object;

# interfaces
.implements LI0/L;


# static fields
.field public static final f:Landroidx/media3/common/Format;

.field public static final g:Landroidx/media3/common/Format;


# instance fields
.field public final a:LI0/L;

.field public final b:Landroidx/media3/common/Format;

.field public c:Landroidx/media3/common/Format;

.field public d:[B

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Lv0/u;->f:Landroidx/media3/common/Format;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Lv0/u;->g:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(LI0/L;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/u;->a:LI0/L;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Lv0/u;->g:Landroidx/media3/common/Format;

    iput-object p1, p0, Lv0/u;->b:Landroidx/media3/common/Format;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown metadataType: "

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lv0/u;->f:Landroidx/media3/common/Format;

    iput-object p1, p0, Lv0/u;->b:Landroidx/media3/common/Format;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lv0/u;->d:[B

    iput p1, p0, Lv0/u;->e:I

    return-void
.end method


# virtual methods
.method public final format(Landroidx/media3/common/Format;)V
    .locals 1

    iput-object p1, p0, Lv0/u;->c:Landroidx/media3/common/Format;

    iget-object p1, p0, Lv0/u;->a:LI0/L;

    iget-object v0, p0, Lv0/u;->b:Landroidx/media3/common/Format;

    invoke-interface {p1, v0}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 2

    iget p4, p0, Lv0/u;->e:I

    add-int/2addr p4, p2

    iget-object v0, p0, Lv0/u;->d:[B

    array-length v1, v0

    if-ge v1, p4, :cond_0

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p4

    iput-object p4, p0, Lv0/u;->d:[B

    :cond_0
    iget-object p4, p0, Lv0/u;->d:[B

    iget v0, p0, Lv0/u;->e:I

    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lv0/u;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lv0/u;->e:I

    return p1
.end method

.method public final sampleData(Lk0/u;II)V
    .locals 2

    iget p3, p0, Lv0/u;->e:I

    add-int/2addr p3, p2

    iget-object v0, p0, Lv0/u;->d:[B

    array-length v1, v0

    if-ge v1, p3, :cond_0

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    iput-object p3, p0, Lv0/u;->d:[B

    :cond_0
    iget-object p3, p0, Lv0/u;->d:[B

    iget v0, p0, Lv0/u;->e:I

    invoke-virtual {p1, p3, v0, p2}, Lk0/u;->e([BII)V

    iget p1, p0, Lv0/u;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lv0/u;->e:I

    return-void
.end method

.method public final sampleMetadata(JIIILI0/K;)V
    .locals 9

    iget-object v0, p0, Lv0/u;->c:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lv0/u;->e:I

    sub-int/2addr v0, p5

    sub-int p4, v0, p4

    iget-object v1, p0, Lv0/u;->d:[B

    invoke-static {v1, p4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    new-instance v1, Lk0/u;

    invoke-direct {v1, p4}, Lk0/u;-><init>([B)V

    iget-object p4, p0, Lv0/u;->d:[B

    const/4 v2, 0x0

    invoke-static {p4, v0, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p5, p0, Lv0/u;->e:I

    iget-object p4, p0, Lv0/u;->c:Landroidx/media3/common/Format;

    iget-object p4, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p5, p0, Lv0/u;->b:Landroidx/media3/common/Format;

    iget-object v0, p5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v2, Lk0/C;->a:I

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lv0/u;->c:Landroidx/media3/common/Format;

    iget-object p4, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "HlsSampleStreamWrapper"

    if-eqz p4, :cond_2

    invoke-static {v1}, LT0/b;->s(Lk0/u;)LT0/a;

    move-result-object p4

    invoke-virtual {p4}, LT0/a;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lk0/u;

    invoke-virtual {p4}, LT0/a;->getWrappedMetadataBytes()[B

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p4}, Lk0/u;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v6

    iget-object v2, p0, Lv0/u;->a:LI0/L;

    invoke-interface {v2, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v7, 0x0

    move-wide v3, p1

    move v5, p3

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return-void

    :cond_1
    iget-object p1, p5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p4}, LT0/a;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Ignoring EMSG. Expected it to contain wrapped "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but actual wrapped format: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lv0/u;->c:Landroidx/media3/common/Format;

    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
