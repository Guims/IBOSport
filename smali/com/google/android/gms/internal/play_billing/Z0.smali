.class public final Lcom/google/android/gms/internal/play_billing/Z0;
.super Lcom/google/android/gms/internal/play_billing/d1;


# static fields
.field public static final u:Ljava/util/logging/Logger;

.field public static final v:Z


# instance fields
.field public q:Lcom/google/android/gms/internal/play_billing/r1;

.field public final r:[B

.field public final s:I

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/Z0;->u:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/M1;->e:Z

    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/Z0;->v:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/d1;-><init>(I)V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Array range is invalid. Buffer.length="

    const-string v2, ", offset=0, length="

    invoke-static {v0, p2, v1, v2}, LB/f;->l(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static O(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static d0(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/O1;->c(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/N1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static e0(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public final P([BI)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    new-instance v0, LI1/c;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-long v1, p1

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    int-to-long v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final Q(ILcom/google/android/gms/internal/play_billing/Y0;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result p1

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/Y0;->q:[B

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->P([BI)V

    return-void
.end method

.method public final R(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->S(I)V

    return-void
.end method

.method public final S(I)V
    .locals 9

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, LI1/c;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    int-to-long v5, p1

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v8}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final T(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/Z0;->U(J)V

    return-void
.end method

.method public final U(J)V
    .locals 9

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    int-to-long v3, v1

    new-instance v2, LI1/c;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    int-to-long v5, p1

    const/16 v7, 0x8

    invoke-direct/range {v2 .. v8}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2
.end method

.method public final V(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->W(I)V

    return-void
.end method

.method public final W(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->c0(J)V

    return-void
.end method

.method public final X(ILjava/lang/String;)V
    .locals 7

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/N1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/play_billing/O1;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/O1;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/play_billing/O1;->b(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/play_billing/N1; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    new-instance p2, LI1/c;

    invoke-direct {p2, p1}, LI1/c;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "inefficientWriteStringNoTag"

    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v1, Lcom/google/android/gms/internal/play_billing/Z0;->u:Ljava/util/logging/Logger;

    const-string v3, "com.google.protobuf.CodedOutputStream"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_2
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->P([BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    new-instance p2, LI1/c;

    invoke-direct {p2, p1}, LI1/c;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final Y(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    return-void
.end method

.method public final Z(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    return-void
.end method

.method public final a0(I)V
    .locals 7

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    or-int/lit16 v2, p1, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, LI1/c;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-long v1, p1

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    int-to-long v3, p1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final b0(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/Z0;->c0(J)V

    return-void
.end method

.method public final c0(J)V
    .locals 14

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/Z0;->v:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget v6, p0, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    sub-int v0, v6, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    move-wide v8, p1

    :goto_0
    and-long v10, v8, v4

    cmp-long v0, v10, v2

    long-to-int v6, v8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-long v0, v0

    int-to-byte v2, v6

    sget-object v3, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    sget-wide v4, Lcom/google/android/gms/internal/play_billing/M1;->f:J

    add-long/2addr v4, v0

    invoke-virtual {v3, v7, v4, v5, v2}, Lcom/google/android/gms/internal/play_billing/L1;->d(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v10, v0, 0x1

    iput v10, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-long v10, v0

    or-int/lit16 v0, v6, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    sget-object v6, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    sget-wide v12, Lcom/google/android/gms/internal/play_billing/M1;->f:J

    add-long/2addr v12, v10

    invoke-virtual {v6, v7, v12, v13, v0}, Lcom/google/android/gms/internal/play_billing/L1;->d(Ljava/lang/Object;JB)V

    ushr-long/2addr v8, v1

    goto :goto_0

    :cond_1
    move-wide v8, p1

    :goto_1
    and-long v10, v8, v4

    cmp-long v0, v10, v2

    if-nez v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    return-void

    :catch_0
    move-exception v0

    move-object v13, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    add-int/lit8 v10, v0, 0x1

    iput v10, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    long-to-int v10, v8

    or-int/lit16 v10, v10, 0x80

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr v8, v1

    goto :goto_1

    :goto_2
    new-instance v7, LI1/c;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    int-to-long v8, v0

    int-to-long v10, v6

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v13}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v7
.end method
