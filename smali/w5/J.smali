.class public final Lw5/J;
.super Ljava/lang/Object;


# direct methods
.method public static a(LK5/i;Lw5/t;J)LB5/h;
    .locals 1

    const-string v0, "$this$asResponseBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LB5/h;

    invoke-direct {v0, p0, p1, p2, p3}, LB5/h;-><init>(LK5/i;Lw5/t;J)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lw5/t;)LB5/h;
    .locals 5

    const-string v0, "$this$toResponseBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk5/a;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    sget-object v1, Lw5/t;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lw5/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LH3/u0;->t(Ljava/lang/String;)Lw5/t;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    new-instance v1, LK5/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "charset"

    invoke-static {v0, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "string"

    invoke-static {p0, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_3

    sget-object v4, Lk5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p0, v3, v2}, LK5/g;->M(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-virtual {v1, p0, v3, v0}, LK5/g;->write([BII)V

    :goto_1
    iget-wide v2, v1, LK5/g;->q:J

    invoke-static {v1, p1, v2, v3}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "endIndex > string.length: "

    const-string v0, " > "

    invoke-static {p1, v2, v0}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "endIndex < beginIndex: "

    const-string p1, " < "

    invoke-static {v2, v3, p0, p1}, LB/f;->l(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c([BLw5/t;)LB5/h;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, LK5/g;->write([BII)V

    array-length p0, p0

    int-to-long v1, p0

    invoke-static {v0, p1, v1, v2}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0
.end method
