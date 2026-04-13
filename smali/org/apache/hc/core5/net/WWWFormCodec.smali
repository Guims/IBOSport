.class public Lorg/apache/hc/core5/net/WWWFormCodec;
.super Ljava/lang/Object;


# static fields
.field private static final QP_SEP_A:C = '&'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lorg/apache/hc/core5/net/URIBuilder;->formatQuery(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/hc/core5/net/URIBuilder;->formatQuery(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/hc/core5/net/URIBuilder;->parseQuery(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
