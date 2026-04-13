.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final Companion:Lg4/v;

.field public static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FirebaseSessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final appContext:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final backgroundDispatcher:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field

.field private static final transportFactory:Ly3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/q;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg4/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lg4/v;

    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Ly3/q;

    const-class v0, Lv3/e;

    invoke-static {v0}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Ly3/q;

    const-class v0, LY3/e;

    invoke-static {v0}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Ly3/q;

    new-instance v0, Ly3/q;

    const-class v1, Lx3/a;

    const-class v2, Lm5/s;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Ly3/q;

    new-instance v0, Ly3/q;

    const-class v1, Lx3/b;

    invoke-direct {v0, v1, v2}, Ly3/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Ly3/q;

    const-class v0, Lg2/e;

    invoke-static {v0}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Ly3/q;

    const-class v0, Lg4/r;

    invoke-static {v0}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Ly3/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LD5/g;)Lg4/r;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Ly3/c;)Lg4/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppContext$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Ly3/q;

    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Ly3/q;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Ly3/q;

    return-object v0
.end method

.method public static synthetic b(LD5/g;)Lg4/o;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Ly3/c;)Lg4/o;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda$0(Ly3/c;)Lg4/o;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Ly3/q;

    invoke-interface {p0, v0}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg4/r;

    check-cast p0, Lg4/i;

    iget-object p0, p0, Lg4/i;->i:LR4/a;

    invoke-interface {p0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg4/o;

    return-object p0
.end method

.method private static final getComponents$lambda$1(Ly3/c;)Lg4/r;
    .locals 12

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Ly3/q;

    invoke-interface {p0, v0}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "container[appContext]"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Ly3/q;

    invoke-interface {p0, v1}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "container[backgroundDispatcher]"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LV4/i;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Ly3/q;

    invoke-interface {p0, v2}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[blockingDispatcher]"

    invoke-static {v2, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LV4/i;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Ly3/q;

    invoke-interface {p0, v2}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[firebaseApp]"

    invoke-static {v2, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lv3/e;

    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Ly3/q;

    invoke-interface {p0, v3}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "container[firebaseInstallationsApi]"

    invoke-static {v3, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LY3/e;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Ly3/q;

    invoke-interface {p0, v4}, Ly3/c;->e(Ly3/q;)LX3/b;

    move-result-object p0

    const-string v4, "container.getProvider(transportFactory)"

    invoke-static {p0, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lg4/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lj4/c;->a(Ljava/lang/Object;)Lj4/c;

    move-result-object v2

    iput-object v2, v4, Lg4/i;->a:Lj4/c;

    invoke-static {v0}, Lj4/c;->a(Ljava/lang/Object;)Lj4/c;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->b:Lj4/c;

    new-instance v2, Lg4/m;

    const/4 v5, 0x5

    invoke-direct {v2, v0, v5}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v2}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->c:LR4/a;

    invoke-static {v1}, Lj4/c;->a(Ljava/lang/Object;)Lj4/c;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->d:Lj4/c;

    invoke-static {v3}, Lj4/c;->a(Ljava/lang/Object;)Lj4/c;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->e:Lj4/c;

    iget-object v0, v4, Lg4/i;->a:Lj4/c;

    new-instance v1, Lg4/m;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->f:LR4/a;

    iget-object v1, v4, Lg4/i;->d:Lj4/c;

    new-instance v2, Lg4/F;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lg4/F;-><init>(LR4/a;LR4/a;I)V

    invoke-static {v2}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->g:LR4/a;

    iget-object v0, v4, Lg4/i;->b:Lj4/c;

    new-instance v1, Lg4/m;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    new-instance v1, Lk4/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lk4/l;-><init>(LR4/a;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v10

    iget-object v6, v4, Lg4/i;->d:Lj4/c;

    iget-object v7, v4, Lg4/i;->e:Lj4/c;

    iget-object v8, v4, Lg4/i;->f:LR4/a;

    iget-object v9, v4, Lg4/i;->g:LR4/a;

    new-instance v5, LG/c;

    const/4 v11, 0x3

    invoke-direct/range {v5 .. v11}, LG/c;-><init>(LR4/a;LR4/a;LR4/a;LR4/a;LR4/a;I)V

    invoke-static {v5}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iget-object v1, v4, Lg4/i;->c:LR4/a;

    new-instance v2, Lg4/F;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v0, v3}, Lg4/F;-><init>(LR4/a;LR4/a;I)V

    invoke-static {v2}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->h:LR4/a;

    iget-object v0, v4, Lg4/i;->b:Lj4/c;

    new-instance v1, Lg4/m;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v9

    iget-object v6, v4, Lg4/i;->a:Lj4/c;

    iget-object v7, v4, Lg4/i;->h:LR4/a;

    iget-object v8, v4, Lg4/i;->d:Lj4/c;

    new-instance v5, LK1/c;

    const/16 v10, 0xa

    invoke-direct/range {v5 .. v10}, LK1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v5}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->i:LR4/a;

    iget-object v0, v4, Lg4/i;->b:Lj4/c;

    new-instance v1, Lg4/m;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iget-object v1, v4, Lg4/i;->d:Lj4/c;

    new-instance v2, Lg4/F;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lg4/F;-><init>(LR4/a;LR4/a;I)V

    invoke-static {v2}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v0

    iput-object v0, v4, Lg4/i;->j:LR4/a;

    invoke-static {p0}, Lj4/c;->a(Ljava/lang/Object;)Lj4/c;

    move-result-object p0

    new-instance v0, Lg4/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg4/m;-><init>(Lj4/c;I)V

    invoke-static {v0}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object v9

    iget-object v6, v4, Lg4/i;->a:Lj4/c;

    iget-object v7, v4, Lg4/i;->e:Lj4/c;

    iget-object v8, v4, Lg4/i;->h:LR4/a;

    iget-object v10, v4, Lg4/i;->d:Lj4/c;

    new-instance v5, LG/c;

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, LG/c;-><init>(LR4/a;LR4/a;LR4/a;LR4/a;LR4/a;I)V

    invoke-static {v5}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object p0

    iput-object p0, v4, Lg4/i;->k:LR4/a;

    sget-object p0, Lg4/s;->a:Lg4/t;

    invoke-static {p0}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object p0

    iput-object p0, v4, Lg4/i;->l:LR4/a;

    sget-object p0, Lg4/s;->b:Lg4/t;

    invoke-static {p0}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object p0

    iget-object v0, v4, Lg4/i;->l:LR4/a;

    new-instance v1, Lg4/F;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lg4/F;-><init>(LR4/a;LR4/a;I)V

    invoke-static {v1}, Lj4/a;->a(Lj4/b;)LR4/a;

    move-result-object p0

    iput-object p0, v4, Lg4/i;->m:LR4/a;

    return-object v4
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lg4/o;

    invoke-static {v0}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v0

    const-string v1, "fire-sessions"

    iput-object v1, v0, Ly3/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Ly3/q;

    invoke-static {v2}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ly3/a;->a(Ly3/i;)V

    new-instance v2, Landroidx/media3/common/d;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Landroidx/media3/common/d;-><init>(I)V

    iput-object v2, v0, Ly3/a;->f:Ly3/d;

    iget v2, v0, Ly3/a;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, v0, Ly3/a;->d:I

    invoke-virtual {v0}, Ly3/a;->b()Ly3/b;

    move-result-object v0

    const-class v2, Lg4/r;

    invoke-static {v2}, Ly3/b;->a(Ljava/lang/Class;)Ly3/a;

    move-result-object v2

    const-string v4, "fire-sessions-component"

    iput-object v4, v2, Ly3/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Ly3/q;

    invoke-static {v4}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Ly3/q;

    invoke-static {v4}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Ly3/q;

    invoke-static {v4}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Ly3/q;

    invoke-static {v4}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Ly3/q;

    invoke-static {v4}, Ly3/i;->b(Ly3/q;)Ly3/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/a;->a(Ly3/i;)V

    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Ly3/q;

    new-instance v5, Ly3/i;

    invoke-direct {v5, v4, v3, v3}, Ly3/i;-><init>(Ly3/q;II)V

    invoke-virtual {v2, v5}, Ly3/a;->a(Ly3/i;)V

    new-instance v3, Landroidx/media3/common/d;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Landroidx/media3/common/d;-><init>(I)V

    iput-object v3, v2, Ly3/a;->f:Ly3/d;

    invoke-virtual {v2}, Ly3/a;->b()Ly3/b;

    move-result-object v2

    const-string v3, "2.1.1"

    invoke-static {v1, v3}, LQ5/d;->e(Ljava/lang/String;Ljava/lang/String;)Ly3/b;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ly3/b;

    move-result-object v0

    invoke-static {v0}, LT4/h;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
