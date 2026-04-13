.class public final LH3/e;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/e;

.field public static final b:LR3/c;

.field public static final c:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/e;->a:LH3/e;

    const-string v0, "files"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/e;->b:LR3/c;

    const-string v0, "orgId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/e;->c:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/t0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/G;

    iget-object v0, p1, LH3/G;->a:Ljava/util/List;

    sget-object v1, LH3/e;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/e;->c:LR3/c;

    iget-object p1, p1, LH3/G;->b:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
