.class public final Lg0/b;
.super LL1/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lg0/a;->b:Lg0/a;

    const-string v1, "initialExtras"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, LL1/a;-><init>(I)V

    iget-object v1, p0, LL1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v0, v0, LL1/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
