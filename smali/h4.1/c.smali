.class public final Lh4/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lh4/c;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/c;->a:Lh4/c;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lh4/c;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lh4/d;)Lh4/a;
    .locals 3

    const-string v0, "dependencies"

    sget-object v1, Lh4/c;->b:Ljava/util/Map;

    invoke-static {v1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lh4/a;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Dependencies should be added at class load time."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(LX4/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lh4/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lh4/b;

    iget v1, v0, Lh4/b;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lh4/b;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lh4/b;

    invoke-direct {v0, p0, p1}, Lh4/b;-><init>(Lh4/c;LX4/c;)V

    :goto_0
    iget-object p1, v0, Lh4/b;->v:Ljava/lang/Object;

    iget v1, v0, Lh4/b;->x:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lh4/b;->u:Ljava/lang/Object;

    iget-object v3, v0, Lh4/b;->t:Ljava/util/Map;

    iget-object v4, v0, Lh4/b;->s:Lu5/d;

    iget-object v5, v0, Lh4/b;->r:Lh4/d;

    iget-object v6, v0, Lh4/b;->q:Ljava/util/Iterator;

    iget-object v7, v0, Lh4/b;->b:Ljava/util/Map;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    const-string p1, "dependencies"

    sget-object v1, Lh4/c;->b:Ljava/util/Map;

    invoke-static {v1, p1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, LT4/s;->u(I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, p1

    move-object v6, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lh4/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/a;

    iget-object v4, p1, Lh4/a;->a:Lu5/d;

    iput-object v3, v0, Lh4/b;->b:Ljava/util/Map;

    iput-object v6, v0, Lh4/b;->q:Ljava/util/Iterator;

    iput-object v5, v0, Lh4/b;->r:Lh4/d;

    iput-object v4, v0, Lh4/b;->s:Lu5/d;

    iput-object v3, v0, Lh4/b;->t:Ljava/util/Map;

    iput-object v1, v0, Lh4/b;->u:Ljava/lang/Object;

    iput v2, v0, Lh4/b;->x:I

    invoke-virtual {v4, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v7, LW4/a;->b:LW4/a;

    if-ne p1, v7, :cond_3

    return-object v7

    :cond_3
    move-object v7, v3

    :goto_2
    const/4 p1, 0x0

    :try_start_0
    const-string v8, "subscriberName"

    invoke-static {v5, v8}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lh4/c;->a(Lh4/d;)Lh4/a;

    move-result-object v8

    iget-object v8, v8, Lh4/a;->b:LE3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_4

    invoke-virtual {v4, p1}, Lu5/d;->f(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v7

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscriber "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4, p1}, Lu5/d;->f(Ljava/lang/Object;)V

    throw v0

    :cond_5
    return-object v3
.end method
