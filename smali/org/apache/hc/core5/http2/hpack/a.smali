.class public final synthetic Lorg/apache/hc/core5/http2/hpack/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/hc/core5/http2/hpack/OutboundDynamicTable;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method
