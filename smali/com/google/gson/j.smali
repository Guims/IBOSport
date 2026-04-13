.class public final Lcom/google/gson/j;
.super Ljava/lang/Object;


# static fields
.field public static final l:Lcom/google/gson/i;

.field public static final m:Lcom/google/gson/a;

.field public static final n:Lcom/google/gson/q;

.field public static final o:Lcom/google/gson/r;


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:LY1/c;

.field public final d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Lcom/google/gson/i;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/gson/i;->d:Lcom/google/gson/i;

    sput-object v0, Lcom/google/gson/j;->l:Lcom/google/gson/i;

    sget-object v0, Lcom/google/gson/h;->b:Lcom/google/gson/a;

    sput-object v0, Lcom/google/gson/j;->m:Lcom/google/gson/a;

    sget-object v0, Lcom/google/gson/u;->b:Lcom/google/gson/q;

    sput-object v0, Lcom/google/gson/j;->n:Lcom/google/gson/q;

    sget-object v0, Lcom/google/gson/u;->q:Lcom/google/gson/r;

    sput-object v0, Lcom/google/gson/j;->o:Lcom/google/gson/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    sget-object v1, Lcom/google/gson/internal/Excluder;->r:Lcom/google/gson/internal/Excluder;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v10, Lcom/google/gson/j;->o:Lcom/google/gson/r;

    const/4 v5, 0x0

    sget-object v2, Lcom/google/gson/j;->m:Lcom/google/gson/a;

    sget-object v4, Lcom/google/gson/j;->l:Lcom/google/gson/i;

    sget-object v9, Lcom/google/gson/j;->n:Lcom/google/gson/q;

    move-object v7, v6

    move-object v8, v6

    move-object v11, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/j;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/h;Ljava/util/Map;Lcom/google/gson/i;ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/h;Ljava/util/Map;Lcom/google/gson/i;ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/u;Lcom/google/gson/u;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/gson/j;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, p3

    move-object p3, p2

    new-instance p2, LY1/c;

    const/16 v1, 0xa

    invoke-direct {p2, v0, v1, p11}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/gson/j;->c:LY1/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/j;->f:Z

    iput-object p4, p0, Lcom/google/gson/j;->g:Lcom/google/gson/i;

    iput p5, p0, Lcom/google/gson/j;->k:I

    iput-object p6, p0, Lcom/google/gson/j;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/google/gson/j;->i:Ljava/util/List;

    iput-object p11, p0, Lcom/google/gson/j;->j:Ljava/util/List;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/google/gson/internal/bind/f;->A:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p9}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->d(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->p:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->g:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->d:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->e:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->f:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->k:Lcom/google/gson/v;

    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    invoke-static {p5, p6, p4}, Lcom/google/gson/internal/bind/f;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p5

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/gson/Gson$1;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Double;

    invoke-static {p6, p8, p5}, Lcom/google/gson/internal/bind/f;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p5

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/gson/Gson$2;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Float;

    invoke-static {p6, p8, p5}, Lcom/google/gson/internal/bind/f;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p5

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/gson/u;->q:Lcom/google/gson/r;

    if-ne p10, p5, :cond_0

    sget-object p5, Lcom/google/gson/internal/bind/NumberTypeAdapter;->b:Lcom/google/gson/w;

    goto :goto_0

    :cond_0
    invoke-static {p10}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->d(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object p5

    :goto_0
    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/gson/internal/bind/f;->h:Lcom/google/gson/w;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/google/gson/internal/bind/f;->i:Lcom/google/gson/w;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/gson/Gson$4;

    invoke-direct {p5, p4}, Lcom/google/gson/Gson$4;-><init>(Lcom/google/gson/v;)V

    new-instance p6, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {p6, p5}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/v;)V

    const-class p5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p5, p6}, Lcom/google/gson/internal/bind/f;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p5

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/gson/Gson$5;

    invoke-direct {p5, p4}, Lcom/google/gson/Gson$5;-><init>(Lcom/google/gson/v;)V

    new-instance p4, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {p4, p5}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/v;)V

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p5, p4}, Lcom/google/gson/internal/bind/f;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->j:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->l:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->q:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->r:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p5, Lcom/google/gson/internal/bind/f;->m:Lcom/google/gson/v;

    invoke-static {p4, p5}, Lcom/google/gson/internal/bind/f;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p5, Lcom/google/gson/internal/bind/f;->n:Lcom/google/gson/v;

    invoke-static {p4, p5}, Lcom/google/gson/internal/bind/f;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Lcom/google/gson/internal/g;

    sget-object p5, Lcom/google/gson/internal/bind/f;->o:Lcom/google/gson/v;

    invoke-static {p4, p5}, Lcom/google/gson/internal/bind/f;->a(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p4

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->s:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->t:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->v:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->w:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->y:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->u:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->b:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;->c:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->x:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p4, Lcom/google/gson/internal/sql/b;->a:Z

    if-eqz p4, :cond_1

    sget-object p4, Lcom/google/gson/internal/sql/b;->c:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/sql/b;->b:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/sql/b;->d:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p4, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->c:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->a:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {p4, p2}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(LY1/c;)V

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p4, p2}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(LY1/c;)V

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {p5, p2}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(LY1/c;)V

    iput-object p5, p0, Lcom/google/gson/j;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/google/gson/internal/bind/f;->B:Lcom/google/gson/w;

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, p1

    new-instance p1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    move-object p6, p11

    invoke-direct/range {p1 .. p6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(LY1/c;Lcom/google/gson/h;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;Ljava/util/List;)V

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/j;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lp4/a;

    invoke-direct {v0, p1}, Lp4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p2, v0}, Lcom/google/gson/j;->d(Ljava/lang/String;Lp4/a;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const-class p1, Ljava/lang/Float;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const-class p1, Ljava/lang/Byte;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-class p1, Ljava/lang/Double;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const-class p1, Ljava/lang/Long;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-class p1, Ljava/lang/Character;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const-class p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const-class p1, Ljava/lang/Short;

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    const-class p1, Ljava/lang/Void;

    :cond_8
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lp4/a;

    invoke-direct {v0, p2}, Lp4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/j;->d(Ljava/lang/String;Lp4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Lp4/a;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lq4/a;

    invoke-direct {p1, v1}, Lq4/a;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/gson/j;->k:I

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_b

    iput v3, p1, Lq4/a;->D:I

    const-string v4, "AssertionError (GSON 2.11.0): "

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eqz v2, :cond_2

    iput v2, p1, Lq4/a;->D:I

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    if-ne v3, v1, :cond_4

    iput v5, p1, Lq4/a;->D:I

    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lq4/a;->M()I

    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Lcom/google/gson/j;->e(Lp4/a;)Lcom/google/gson/v;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/gson/v;->b(Lq4/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    iput v3, p1, Lq4/a;->D:I

    move-object v0, p2

    goto :goto_6

    :cond_5
    throw v0

    :catchall_0
    move-exception p2

    goto :goto_a

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_4

    :catch_3
    move-exception p2

    goto :goto_5

    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    new-instance v1, Lcom/google/gson/m;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_4
    new-instance v1, Lcom/google/gson/m;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v5, :cond_9

    if-eqz v3, :cond_8

    iput v3, p1, Lq4/a;->D:I

    :goto_6
    if-eqz v0, :cond_7

    :try_start_2
    invoke-virtual {p1}, Lq4/a;->M()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_6

    goto :goto_9

    :cond_6
    new-instance p1, Lcom/google/gson/m;

    const-string p2, "JSON document was not fully consumed."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lq4/c; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception p1

    goto :goto_7

    :catch_5
    move-exception p1

    goto :goto_8

    :goto_7
    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_8
    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    :goto_9
    return-object v0

    :cond_8
    throw v0

    :cond_9
    :try_start_3
    new-instance v1, Lcom/google/gson/m;

    invoke-direct {v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    if-eqz v3, :cond_a

    iput v3, p1, Lq4/a;->D:I

    throw p2

    :cond_a
    throw v0

    :cond_b
    throw v0
.end method

.method public final e(Lp4/a;)Lcom/google/gson/v;
    .locals 8

    const-string v0, "type must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/gson/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/v;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/v;

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v4}, Lcom/google/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/gson/j;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/w;

    invoke-interface {v6, p0, p1}, Lcom/google/gson/w;->a(Lcom/google/gson/j;Lp4/a;)Lcom/google/gson/v;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v5, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->a:Lcom/google/gson/v;

    if-nez v5, :cond_4

    iput-object v6, v4, Lcom/google/gson/Gson$FutureTypeAdapter;->a:Lcom/google/gson/v;

    invoke-interface {v2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Delegate is already set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v6

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON (2.11.0) cannot handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_9
    throw p1
.end method

.method public final f(Lcom/google/gson/w;Lp4/a;)Lcom/google/gson/v;
    .locals 6

    const-string v0, "skipPast must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "type must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/gson/j;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->q:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->r:Lcom/google/gson/w;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lp4/a;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/w;

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_5

    goto :goto_0

    :cond_1
    const-class v3, Lm4/a;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lm4/a;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lm4/a;->value()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/gson/w;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->b:LY1/c;

    new-instance v5, Lp4/a;

    invoke-direct {v5, v3}, Lp4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v4, v5}, LY1/c;->E(Lp4/a;)Lcom/google/gson/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/gson/internal/l;->L()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/w;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/w;

    if-eqz v1, :cond_4

    move-object v3, v1

    :cond_4
    if-ne v3, p1, :cond_5

    :goto_0
    move-object p1, v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/gson/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/w;

    if-nez v1, :cond_7

    if-ne v2, p1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v2, p0, p2}, Lcom/google/gson/w;->a(Lcom/google/gson/j;Lp4/a;)Lcom/google/gson/v;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p0, p2}, Lcom/google/gson/j;->e(Lp4/a;)Lcom/google/gson/v;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSON cannot serialize or deserialize "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/io/Writer;)Lq4/b;
    .locals 1

    new-instance v0, Lq4/b;

    invoke-direct {v0, p1}, Lq4/b;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/google/gson/j;->g:Lcom/google/gson/i;

    invoke-virtual {v0, p1}, Lq4/b;->B(Lcom/google/gson/i;)V

    iget-boolean p1, p0, Lcom/google/gson/j;->f:Z

    iput-boolean p1, v0, Lq4/b;->x:Z

    iget p1, p0, Lcom/google/gson/j;->k:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {v0, p1}, Lq4/b;->C(I)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lq4/b;->z:Z

    return-object v0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/j;->g(Ljava/io/Writer;)Lq4/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/j;->j(Lq4/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/gson/m;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/gson/j;->g(Ljava/io/Writer;)Lq4/b;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/gson/j;->i(Ljava/lang/Object;Ljava/lang/Class;Lq4/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/google/gson/m;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Class;Lq4/b;)V
    .locals 5

    const-string v0, "AssertionError (GSON 2.11.0): "

    new-instance v1, Lp4/a;

    invoke-direct {v1, p2}, Lp4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lcom/google/gson/j;->e(Lp4/a;)Lcom/google/gson/v;

    move-result-object p2

    iget v1, p3, Lq4/b;->w:I

    iget v2, p0, Lcom/google/gson/j;->k:I

    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Lq4/b;->C(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    iput v2, p3, Lq4/b;->w:I

    :cond_1
    :goto_0
    iget-boolean v2, p3, Lq4/b;->x:Z

    iget-boolean v3, p3, Lq4/b;->z:Z

    iget-boolean v4, p0, Lcom/google/gson/j;->f:Z

    iput-boolean v4, p3, Lq4/b;->x:Z

    const/4 v4, 0x0

    iput-boolean v4, p3, Lq4/b;->z:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/v;->c(Lq4/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lq4/b;->C(I)V

    iput-boolean v2, p3, Lq4/b;->x:Z

    iput-boolean v3, p3, Lq4/b;->z:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p3, v1}, Lq4/b;->C(I)V

    iput-boolean v2, p3, Lq4/b;->x:Z

    iput-boolean v3, p3, Lq4/b;->z:Z

    throw p1
.end method

.method public final j(Lq4/b;)V
    .locals 7

    sget-object v0, Lcom/google/gson/n;->b:Lcom/google/gson/n;

    const-string v1, "AssertionError (GSON 2.11.0): "

    iget v2, p1, Lq4/b;->w:I

    iget-boolean v3, p1, Lq4/b;->x:Z

    iget-boolean v4, p1, Lq4/b;->z:Z

    iget-boolean v5, p0, Lcom/google/gson/j;->f:Z

    iput-boolean v5, p1, Lq4/b;->x:Z

    const/4 v5, 0x0

    iput-boolean v5, p1, Lq4/b;->z:Z

    iget v5, p0, Lcom/google/gson/j;->k:I

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Lq4/b;->C(I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    iput v5, p1, Lq4/b;->w:I

    :cond_1
    :goto_0
    :try_start_0
    sget-object v5, Lcom/google/gson/internal/bind/f;->z:Lcom/google/gson/v;

    invoke-virtual {v5, p1, v0}, Lcom/google/gson/v;->c(Lq4/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Lq4/b;->C(I)V

    iput-boolean v3, p1, Lq4/b;->x:Z

    iput-boolean v4, p1, Lq4/b;->z:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catchall_0
    move-exception v0

    goto :goto_3

    :goto_2
    new-instance v1, Lcom/google/gson/m;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p1, v2}, Lq4/b;->C(I)V

    iput-boolean v3, p1, Lq4/b;->x:Z

    iput-boolean v4, p1, Lq4/b;->z:Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:false,factories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/gson/j;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/j;->c:LY1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
