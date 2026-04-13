.class public abstract Lk5/g;
.super LE5/d;


# direct methods
.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|"

    invoke-static {v0}, Lk5/f;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lk5/d;

    invoke-direct {v1, p0}, Lk5/d;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, LT4/p;->b:LT4/p;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lk5/d;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Lk5/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lk5/d;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, LT4/h;->s(Ljava/util/List;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_b

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-ne v5, v2, :cond_4

    :cond_3
    invoke-static {v6}, Lk5/f;->O(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    move-object v6, v8

    goto :goto_7

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move v9, v4

    :goto_4
    const/4 v10, -0x1

    if-ge v9, v5, :cond_6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, LE2/g;->w(C)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move v9, v10

    :goto_5
    if-ne v9, v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v6, v9, v0, v4}, Lk5/n;->G(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "substring(...)"

    invoke-static {v8, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    :goto_6
    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    :goto_7
    if-eqz v6, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v5, v7

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v3, v0}, LT4/g;->y(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "marginPrefix must be non-blank string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
