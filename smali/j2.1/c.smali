.class public final Lj2/c;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lj2/c;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj2/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj2/c;->a:Lj2/c;

    new-instance v0, LU3/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU3/a;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, LU3/d;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR3/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "eventsDroppedCount"

    invoke-direct {v0, v3, v1}, LR3/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lj2/c;->b:LR3/c;

    new-instance v0, LU3/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LU3/a;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LR3/c;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "reason"

    invoke-direct {v0, v2, v1}, LR3/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lj2/c;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lm2/d;

    check-cast p2, LR3/e;

    sget-object v0, Lj2/c;->b:LR3/c;

    iget-wide v1, p1, Lm2/d;->a:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Lj2/c;->c:LR3/c;

    iget-object p1, p1, Lm2/d;->b:Lm2/c;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
