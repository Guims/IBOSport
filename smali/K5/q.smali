.class public final LK5/q;
.super Ljava/lang/Object;

# interfaces
.implements LK5/F;


# instance fields
.field public b:B

.field public final q:LK5/z;

.field public final r:Ljava/util/zip/Inflater;

.field public final s:LK5/r;

.field public final t:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(LK5/F;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK5/z;

    invoke-direct {v0, p1}, LK5/z;-><init>(LK5/F;)V

    iput-object v0, p0, LK5/q;->q:LK5/z;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, LK5/q;->r:Ljava/util/zip/Inflater;

    new-instance v1, LK5/r;

    invoke-direct {v1, v0, p1}, LK5/r;-><init>(LK5/z;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, LK5/q;->s:LK5/r;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, LK5/q;->t:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(LK5/g;JJ)V
    .locals 4

    iget-object p1, p1, LK5/g;->b:LK5/A;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, LK5/A;->c:I

    iget v1, p1, LK5/A;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, LK5/A;->f:LK5/A;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, LK5/A;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, LK5/A;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, LK5/q;->t:Ljava/util/zip/CRC32;

    iget-object v3, p1, LK5/A;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, LK5/A;->f:LK5/A;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, LK5/q;->s:LK5/r;

    invoke-virtual {v0}, LK5/r;->close()V

    return-void
.end method

.method public final read(LK5/g;J)J
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    const-string v1, "sink"

    invoke-static {v6, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-ltz v3, :cond_12

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    iget-byte v1, v0, LK5/q;->b:B

    iget-object v9, v0, LK5/q;->t:Ljava/util/zip/CRC32;

    const/4 v10, 0x1

    iget-object v11, v0, LK5/q;->q:LK5/z;

    const-wide/16 v17, -0x1

    if-nez v1, :cond_d

    const-wide/16 v1, 0xa

    invoke-virtual {v11, v1, v2}, LK5/z;->t(J)V

    iget-object v1, v11, LK5/z;->q:LK5/g;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, LK5/g;->r(J)B

    move-result v19

    shr-int/lit8 v2, v19, 0x1

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_1

    move/from16 v20, v10

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_0
    if-eqz v20, :cond_2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    :cond_2
    invoke-virtual {v11}, LK5/z;->readShort()S

    move-result v0

    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-static {v2, v3, v0}, LK5/q;->a(Ljava/lang/String;II)V

    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, LK5/z;->skip(J)V

    shr-int/lit8 v0, v19, 0x2

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_5

    const-wide/16 v2, 0x2

    invoke-virtual {v11, v2, v3}, LK5/z;->t(J)V

    if-eqz v20, :cond_3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    :cond_3
    invoke-virtual {v1}, LK5/g;->A()S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v11, v4, v5}, LK5/z;->t(J)V

    if-eqz v20, :cond_4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    :cond_4
    invoke-virtual {v11, v4, v5}, LK5/z;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v19, 0x3

    and-int/2addr v0, v10

    const-wide/16 v21, 0x1

    if-ne v0, v10, :cond_8

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/4 v12, 0x0

    invoke-virtual/range {v11 .. v16}, LK5/z;->b(BJJ)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-eqz v0, :cond_7

    if-eqz v20, :cond_6

    const-wide/16 v2, 0x0

    add-long v4, v12, v21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    :cond_6
    add-long v12, v12, v21

    invoke-virtual {v11, v12, v13}, LK5/z;->skip(J)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_1
    shr-int/lit8 v0, v19, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/4 v12, 0x0

    invoke-virtual/range {v11 .. v16}, LK5/z;->b(BJJ)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-eqz v0, :cond_a

    if-eqz v20, :cond_9

    const-wide/16 v2, 0x0

    add-long v4, v12, v21

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    :goto_2
    add-long v12, v12, v21

    invoke-virtual {v11, v12, v13}, LK5/z;->skip(J)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    :goto_3
    if-eqz v20, :cond_c

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const-string v3, "FHCRC"

    invoke-static {v3, v1, v2}, LK5/q;->a(Ljava/lang/String;II)V

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v10, v0, LK5/q;->b:B

    :cond_d
    iget-byte v1, v0, LK5/q;->b:B

    const/4 v12, 0x2

    if-ne v1, v10, :cond_f

    iget-wide v2, v6, LK5/g;->q:J

    iget-object v1, v0, LK5/q;->s:LK5/r;

    invoke-virtual {v1, v6, v7, v8}, LK5/r;->read(LK5/g;J)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_e

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, LK5/q;->b(LK5/g;JJ)V

    return-wide v4

    :cond_e
    iput-byte v12, v0, LK5/q;->b:B

    :cond_f
    iget-byte v1, v0, LK5/q;->b:B

    if-ne v1, v12, :cond_11

    invoke-virtual {v11}, LK5/z;->f()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "CRC"

    invoke-static {v3, v1, v2}, LK5/q;->a(Ljava/lang/String;II)V

    invoke-virtual {v11}, LK5/z;->f()I

    move-result v1

    iget-object v2, v0, LK5/q;->r:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "ISIZE"

    invoke-static {v3, v1, v2}, LK5/q;->a(Ljava/lang/String;II)V

    const/4 v1, 0x3

    iput-byte v1, v0, LK5/q;->b:B

    invoke-virtual {v11}, LK5/z;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "gzip finished without exhausting source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_4
    return-wide v17

    :cond_12
    const-string v1, "byteCount < 0: "

    invoke-static {v7, v8, v1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/q;->q:LK5/z;

    iget-object v0, v0, LK5/z;->b:LK5/F;

    invoke-interface {v0}, LK5/F;->timeout()LK5/H;

    move-result-object v0

    return-object v0
.end method
