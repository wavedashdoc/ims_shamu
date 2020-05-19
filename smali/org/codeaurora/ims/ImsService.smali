.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/compat/ImsService;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsService$imsMMTelFeature;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mImsConfig:Lcom/android/ims/internal/IImsConfig;

.field private mNumPhonesCache:I

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/telephony/ims/compat/ImsService;-><init>()V

    .line 35
    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

    .line 36
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 37
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PHONE_STATE:Ljava/lang/String;

    .line 38
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object p0
.end method

.method private getNumSlots()I
    .locals 2

    .line 49
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 52
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return v0
.end method

.method private getNumSubscriptions()I
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 68
    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string p1, "ImsService"

    const-string v0, "Returning mImsServiceController for ImsService binding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1

    .line 72
    :cond_0
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Intent action in onBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 56
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onCreate()V

    .line 57
    const-string v0, "ImsService"

    const-string v1, "ImsService created!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    .line 59
    move v1, v4

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v1, v0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 3

    .line 77
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateMMTelImsFeature :: phoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 79
    new-instance v0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;

    invoke-direct {v0, p0, p0, p1}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;-><init>(Lorg/codeaurora/ims/ImsService;Landroid/content/Context;I)V

    .line 80
    return-object v0

    .line 82
    :cond_0
    const-string v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateMMTelImsFeature :: Invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 87
    const-string v0, "ImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onDestroy()V

    .line 89
    return-void
.end method
