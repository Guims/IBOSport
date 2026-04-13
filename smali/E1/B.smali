.class public abstract LE1/B;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/f;

.field public static final b:LE1/f;

.field public static final c:LE1/f;

.field public static final d:LE1/f;

.field public static final e:LE1/f;

.field public static final f:LE1/f;

.field public static final g:LE1/f;

.field public static final h:LE1/f;

.field public static final i:LE1/f;

.field public static final j:LE1/f;

.field public static final k:LE1/f;

.field public static final l:LE1/f;

.field public static final m:LE1/f;

.field public static final n:LE1/f;

.field public static final o:LE1/f;

.field public static final p:LE1/f;

.field public static final q:LE1/f;

.field public static final r:LE1/f;

.field public static final s:LE1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, LE1/e;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 3"

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->a:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v2, "Google Play In-app Billing API version is less than 9"

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->b:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v1, "Billing service unavailable on device."

    iput-object v1, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->c:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, LE1/e;->a:I

    iput-object v1, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->d:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, LE1/e;->a:I

    const-string v3, "Client is already in the process of connecting to billing service."

    iput-object v3, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->e:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v3, "The list of SKUs can\'t be empty."

    iput-object v3, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v3, "SKU type can\'t be empty."

    iput-object v3, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v3, "Product type can\'t be empty."

    iput-object v3, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->f:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v3, -0x2

    iput v3, v0, LE1/e;->a:I

    const-string v4, "Client does not support extra params."

    iput-object v4, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->g:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v4, "Invalid purchase token."

    iput-object v4, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->h:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v4, 0x6

    iput v4, v0, LE1/e;->a:I

    const-string v5, "An internal error occurred."

    iput-object v5, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->i:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v5, "SKU can\'t be null."

    iput-object v5, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v5, 0x0

    iput v5, v0, LE1/e;->a:I

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->j:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v5, -0x1

    iput v5, v0, LE1/e;->a:I

    const-string v5, "Service connection is disconnected."

    iput-object v5, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->k:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v2, v0, LE1/e;->a:I

    const-string v2, "Timeout communicating with service."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->l:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support subscriptions."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->m:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support subscriptions update."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support get purchase history."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support price change confirmation."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Play Store version installed does not support cross selling products."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support multi-item purchases."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->n:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support offer_id_token."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->o:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support ProductDetails."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->p:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support in-app messages."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Client does not support user choice billing."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Play Store version installed does not support external offer."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Play Store version installed does not support multi-item purchases with season pass in one cart."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v2, "Unknown feature"

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Play Store version installed does not support get billing config."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Query product details with serialized docid is not supported."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, LE1/e;->a:I

    const-string v2, "Item is unavailable for purchase."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->q:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Query product details with developer specified account is not supported."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v3, v0, LE1/e;->a:I

    const-string v2, "Play Store version installed does not support alternative billing only."

    iput-object v2, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v1, v0, LE1/e;->a:I

    const-string v1, "To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient."

    iput-object v1, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->r:LE1/f;

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput v4, v0, LE1/e;->a:I

    const-string v1, "An error occurred while retrieving billing override."

    iput-object v1, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object v0

    sput-object v0, LE1/B;->s:LE1/f;

    return-void
.end method

.method public static a(ILjava/lang/String;)LE1/f;
    .locals 1

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v0

    iput p0, v0, LE1/e;->a:I

    iput-object p1, v0, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, LE1/e;->a()LE1/f;

    move-result-object p0

    return-object p0
.end method
