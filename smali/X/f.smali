.class public final LX/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:LX/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LX/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LX/f;->a:LX/f;

    return-void
.end method

.method public static a(LL2/o;Ld5/a;)LX/d;
    .locals 6

    sget-object v0, Lm5/C;->b:Lt5/c;

    new-instance v1, Lm5/g0;

    invoke-direct {v1}, Lm5/U;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LV4/j;->b:LV4/j;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, LV4/g;->getKey()LV4/h;

    move-result-object v3

    invoke-interface {v0, v3}, LV4/i;->r(LV4/h;)LV4/i;

    move-result-object v0

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v3, LV4/e;->b:LV4/e;

    invoke-interface {v0, v3}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v4

    check-cast v4, LV4/f;

    if-nez v4, :cond_2

    new-instance v2, LV4/c;

    invoke-direct {v2, v0, v1}, LV4/c;-><init>(LV4/i;LV4/g;)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, LV4/i;->r(LV4/h;)LV4/i;

    move-result-object v0

    if-ne v0, v2, :cond_3

    new-instance v0, LV4/c;

    invoke-direct {v0, v1, v4}, LV4/c;-><init>(LV4/i;LV4/g;)V

    goto :goto_1

    :cond_3
    new-instance v2, LV4/c;

    new-instance v3, LV4/c;

    invoke-direct {v3, v0, v1}, LV4/c;-><init>(LV4/i;LV4/g;)V

    invoke-direct {v2, v3, v4}, LV4/c;-><init>(LV4/i;LV4/g;)V

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object v0

    new-instance v1, LV/f;

    sget-object v2, LK5/n;->a:LK5/t;

    new-instance v3, LX/e;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, LX/e;-><init>(Ld5/a;I)V

    invoke-direct {v1, v2, v3}, LV/f;-><init>(LK5/n;LX/e;)V

    new-instance p1, LX/d;

    new-instance v2, LT/d;

    const/4 v3, 0x0

    sget-object v4, LT4/p;->b:LT4/p;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, LT/d;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-static {v2}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, LT/I;

    invoke-direct {v3, v1, v2, p0, v0}, LT/I;-><init>(LV/f;Ljava/util/List;LL2/o;Lm5/u;)V

    invoke-direct {p1, v3}, LX/d;-><init>(LT/h;)V

    new-instance p0, LX/d;

    invoke-direct {p0, p1}, LX/d;-><init>(LT/h;)V

    return-object p0
.end method


# virtual methods
.method public b(LK5/z;)LX/b;
    .locals 6

    new-instance v0, LK5/e;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LK5/e;-><init>(LK5/i;I)V

    :try_start_0
    invoke-static {v0}, LW/c;->o(Ljava/io/InputStream;)LW/c;

    move-result-object p1
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/z; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    new-array v1, v0, [LX/h;

    new-instance v2, LX/b;

    invoke-direct {v2, v0}, LX/b;-><init>(Z)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LX/h;

    const-string v3, "pairs"

    invoke-static {v1, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, LX/b;->b()V

    array-length v3, v1

    const/4 v4, 0x0

    if-gtz v3, :cond_3

    invoke-virtual {p1}, LW/c;->m()Ljava/util/Map;

    move-result-object p1

    const-string v0, "preferencesProto.preferencesMap"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/g;

    const-string v3, "name"

    invoke-static {v1, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v0, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->C()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    sget-object v5, LX/i;->a:[I

    invoke-static {v3}, Lp/e;->c(I)I

    move-result v3

    aget v3, v5, v3

    :goto_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance p1, LR1/G;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :pswitch_1
    new-instance p1, LT/b;

    const-string v0, "Value not set."

    invoke-direct {p1, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_2
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->u()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/g;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/x;->b:[B

    goto :goto_2

    :cond_1
    new-array v5, v1, [B

    invoke-virtual {v0, v5, v1}, Landroidx/datastore/preferences/protobuf/g;->e([BI)V

    move-object v0, v5

    :goto_2
    const-string v1, "value.bytes.toByteArray()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->B()LW/e;

    move-result-object v0

    invoke-virtual {v0}, LW/e;->n()Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    const-string v1, "value.stringSet.stringsList"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LT4/g;->F(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value.string"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->w()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v3, LX/g;

    invoke-direct {v3, v1}, LX/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LW/g;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LX/b;->d(LX/g;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance p1, LT/b;

    const-string v0, "Value case is null."

    invoke-direct {p1, v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p1, LX/b;

    invoke-virtual {v2}, LX/b;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0}, LX/b;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object p1

    :cond_3
    aget-object p1, v1, v0

    throw v4

    :catch_0
    move-exception p1

    new-instance v0, LT/b;

    const-string v1, "Unable to parse preferences proto."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;LK5/y;)V
    .locals 6

    check-cast p1, LX/b;

    invoke-virtual {p1}, LX/b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {}, LW/c;->n()LW/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/g;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v2, LX/g;->a:Ljava/lang/String;

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v4, LW/g;

    invoke-static {v4, v1}, LW/g;->q(LW/g;Z)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto/16 :goto_1

    :cond_0
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v4, LW/g;

    invoke-static {v4, v1}, LW/g;->r(LW/g;F)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto/16 :goto_1

    :cond_1
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v1, LW/g;

    invoke-static {v1, v4, v5}, LW/g;->o(LW/g;D)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto/16 :goto_1

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v4, LW/g;

    invoke-static {v4, v1}, LW/g;->s(LW/g;I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto/16 :goto_1

    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v1, LW/g;

    invoke-static {v1, v4, v5}, LW/g;->l(LW/g;J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto :goto_1

    :cond_4
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v4, LW/g;

    invoke-static {v4, v1}, LW/g;->m(LW/g;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto :goto_1

    :cond_5
    instance-of v3, v1, Ljava/util/Set;

    if-eqz v3, :cond_6

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    invoke-static {}, LW/e;->o()LW/d;

    move-result-object v4

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v5, v4, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v5, LW/e;

    invoke-static {v5, v1}, LW/e;->l(LW/e;Ljava/util/Set;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v1, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v1, LW/g;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v4

    check-cast v4, LW/e;

    invoke-static {v1, v4}, LW/g;->n(LW/g;LW/e;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    goto :goto_1

    :cond_6
    instance-of v3, v1, [B

    if-eqz v3, :cond_7

    invoke-static {}, LW/g;->D()LW/f;

    move-result-object v3

    check-cast v1, [B

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/g;->d([BII)Landroidx/datastore/preferences/protobuf/g;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v4, LW/g;

    invoke-static {v4, v1}, LW/g;->p(LW/g;Landroidx/datastore/preferences/protobuf/g;)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    check-cast v1, LW/g;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/t;->c()V

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/t;->q:Landroidx/datastore/preferences/protobuf/v;

    check-cast v3, LW/c;

    invoke-static {v3}, LW/c;->l(LW/c;)Landroidx/datastore/preferences/protobuf/H;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroidx/datastore/preferences/protobuf/H;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PreferencesSerializer does not support type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/t;->a()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p1

    check-cast p1, LW/c;

    new-instance v0, LK5/f;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LK5/f;-><init>(LK5/h;I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/v;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result p2

    sget-object v1, Landroidx/datastore/preferences/protobuf/l;->h:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le p2, v1, :cond_9

    move p2, v1

    :cond_9
    new-instance v1, Landroidx/datastore/preferences/protobuf/l;

    invoke-direct {v1, p2, v0}, Landroidx/datastore/preferences/protobuf/l;-><init>(ILjava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/protobuf/v;->b(Landroidx/datastore/preferences/protobuf/l;)V

    iget p1, v1, Landroidx/datastore/preferences/protobuf/l;->f:I

    if-lez p1, :cond_a

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/l;->c0()V

    :cond_a
    return-void
.end method
