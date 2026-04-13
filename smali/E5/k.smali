.class public final LE5/k;
.super LE5/n;


# static fields
.field public static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/16 v4, 0xa

    invoke-static {v4}, LE2/g;->c(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    invoke-static {v6, v7}, Le5/g;->h(II)I

    move-result v7

    const v8, -0x7fffffff

    if-gez v7, :cond_4

    if-ne v5, v3, :cond_1

    goto :goto_3

    :cond_1
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_2

    goto :goto_3

    :cond_2
    const/high16 v8, -0x80000000

    move v6, v3

    :goto_0
    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v2

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v2

    goto :goto_0

    :goto_1
    const v9, -0x38e38e3

    move v10, v2

    move v11, v9

    :goto_2
    if-ge v6, v5, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v4}, Ljava/lang/Character;->digit(II)I

    move-result v12

    if-gez v12, :cond_5

    goto :goto_3

    :cond_5
    if-ge v10, v11, :cond_6

    if-ne v11, v9, :cond_a

    div-int/lit8 v11, v8, 0xa

    if-ge v10, v11, :cond_6

    goto :goto_3

    :cond_6
    mul-int/lit8 v10, v10, 0xa

    add-int v13, v8, v12

    if-ge v10, v13, :cond_7

    :goto_3
    goto :goto_4

    :cond_7
    sub-int/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_9
    neg-int v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_a
    :goto_4
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    :goto_6
    move v2, v3

    goto :goto_7

    :cond_b
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string v4, "getApplicationProtocol"

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    :cond_c
    :goto_7
    sput-boolean v2, LE5/k;->c:Z

    return-void
.end method


# virtual methods
.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const-string p2, "protocols"

    invoke-static {p3, p2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lw5/z;

    sget-object v3, Lw5/z;->q:Lw5/z;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {v0}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lw5/z;

    iget-object v4, v4, Lw5/z;->b:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "sslParameters"

    invoke-static {p2, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, [Ljava/lang/String;

    invoke-static {p2, p3}, LA2/a;->m(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, LA2/a;->k(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-object p1

    :catch_0
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
