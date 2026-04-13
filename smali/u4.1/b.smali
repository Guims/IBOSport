.class public abstract Lu4/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lu4/a;
    .locals 12

    sget-object v1, Lcom/google/gson/internal/Excluder;->r:Lcom/google/gson/internal/Excluder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/google/gson/j;->l:Lcom/google/gson/i;

    sget-object v9, Lcom/google/gson/j;->n:Lcom/google/gson/q;

    sget-object v10, Lcom/google/gson/j;->o:Lcom/google/gson/r;

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v6, Lcom/google/gson/internal/sql/b;->a:Z

    move-object v6, v0

    new-instance v0, Lcom/google/gson/j;

    move-object v7, v3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/google/gson/h;->b:Lcom/google/gson/a;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/j;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/h;Ljava/util/Map;Lcom/google/gson/i;ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V

    new-instance v1, LJ5/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lw5/x;

    invoke-direct {v2}, Lw5/x;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "unit"

    invoke-static {v3, v4}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lx5/b;->b()I

    move-result v3

    iput v3, v2, Lw5/x;->r:I

    invoke-static {}, Lx5/b;->b()I

    move-result v3

    iput v3, v2, Lw5/x;->s:I

    invoke-static {}, Lx5/b;->b()I

    move-result v3

    iput v3, v2, Lw5/x;->t:I

    iget-object v3, v2, Lw5/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lw5/y;

    invoke-direct {v1, v2}, Lw5/y;-><init>(Lw5/x;)V

    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lretrofit2/Retrofit$Builder;->client(Lw5/y;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/j;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lu4/a;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu4/a;

    return-object p0
.end method
